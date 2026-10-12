# Written by the release workflow of secretli/cli for v0.14.1; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.14.1/secretli_v0.14.1_darwin_arm64.tar.gz"
      sha256 "d9b818f347fff671a6b7c280ef05b3bd1946171948fd7e7dc67a39efb93117a2"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.14.1/secretli_v0.14.1_darwin_amd64.tar.gz"
      sha256 "a28fe4ec2499b28cf24934e2ed5eaf87c658d10a3da0d0aea0b0f398b4899e10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.14.1/secretli_v0.14.1_linux_arm64.tar.gz"
      sha256 "f8cb6ca925449b02458f4894bc4c52d14831cb154d89de2337450f165f1efe3c"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.14.1/secretli_v0.14.1_linux_amd64.tar.gz"
      sha256 "579559a22ff792ebbb0c1ae9c760fbd0a1e6a5f329bf7715a6ea5284fb34c88a"
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
