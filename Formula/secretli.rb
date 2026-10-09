# Written by the release workflow of secretli/cli for v0.12.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.12.0/secretli_v0.12.0_darwin_arm64.tar.gz"
      sha256 "70b846bd019437aa7a72f0c80e63e078fa803e59b84a26f8318e6e36b3708035"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.12.0/secretli_v0.12.0_darwin_amd64.tar.gz"
      sha256 "66b325858a26f67fcc22b367205da47d3f2a18b65ffd86ef5aec50d6d0b0e2a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.12.0/secretli_v0.12.0_linux_arm64.tar.gz"
      sha256 "697cedfb4318d0c0fb85e700ac3e2743539c934cc0cd3144c1d9610057c4bc5b"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.12.0/secretli_v0.12.0_linux_amd64.tar.gz"
      sha256 "4ed515f4ad4bf4383b819f741927e950d5a48c195d4c662528f20d36e9b894b3"
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
