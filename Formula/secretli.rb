# Written by the release workflow of secretli/cli for v0.15.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.15.0/secretli_v0.15.0_darwin_arm64.tar.gz"
      sha256 "423fb88ec616280b4f86410f26fbc01fc62f84e912239a1c081d7b3d6c248f1b"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.15.0/secretli_v0.15.0_darwin_amd64.tar.gz"
      sha256 "f4ea1598714515c2803684ca9e9fa77130e470623037505aea1b316c97f8972a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.15.0/secretli_v0.15.0_linux_arm64.tar.gz"
      sha256 "225aed4e5d2347bf72a96a59944201b1e4536439c63a3d346c1044dde2dab32c"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.15.0/secretli_v0.15.0_linux_amd64.tar.gz"
      sha256 "b6e69a47a7c41719859201c5849597a1cea9bdd006ec54b5fba367fbcfa1b01e"
    end
  end

  def install
    bin.install "secretli"
    generate_completions_from_executable(bin/"secretli", "completion")
  end

  test do
    assert_match "secretli v#{version}", shell_output("#{bin}/secretli --version")
  end
end
