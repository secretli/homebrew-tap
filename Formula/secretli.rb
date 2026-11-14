# Written by the release workflow of secretli/cli for v0.18.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.18.0/secretli_v0.18.0_darwin_arm64.tar.gz"
      sha256 "72ef22c6e2d01277476d3f8324909389528a141780b26a3a57cdeb14f20d7ba6"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.18.0/secretli_v0.18.0_darwin_amd64.tar.gz"
      sha256 "3f65a28a47a95f688fe4aa13c6761981f1f10162479a56a3122a72c19b6450e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.18.0/secretli_v0.18.0_linux_arm64.tar.gz"
      sha256 "bddaea0efac447c65e236318c3add06c2a2b17c3e59bc3d8a95b63a572296197"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.18.0/secretli_v0.18.0_linux_amd64.tar.gz"
      sha256 "112ce0bbc3fd09145e17e2f5c6508f5b55dbdd0555b6d169a3f72322e2cdc9ad"
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
