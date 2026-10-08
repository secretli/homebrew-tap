# Written by the release workflow of secretli/cli for v0.6.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.6.0/secretli_v0.6.0_darwin_arm64.tar.gz"
      sha256 "86f7f540e68df21fb3e0c37a1964f36c8a18f75f4c3fe6bf256ea73d13960a8e"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.6.0/secretli_v0.6.0_darwin_amd64.tar.gz"
      sha256 "712d76d2e5dbb28ee0a3cfadf09d46b43290049a7283aead4a37dfa5a6a3e302"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.6.0/secretli_v0.6.0_linux_arm64.tar.gz"
      sha256 "ff076c87247a6ced7ae606ca3af868be9e9aca095c854535e498dcc4f59fcf74"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.6.0/secretli_v0.6.0_linux_amd64.tar.gz"
      sha256 "91df79f3c411117683c737ba6cfaff4e2c88dedc9da54f287ed114ba45073499"
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
