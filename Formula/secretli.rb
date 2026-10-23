# Written by the release workflow of secretli/cli for v0.16.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.16.0/secretli_v0.16.0_darwin_arm64.tar.gz"
      sha256 "c8126e3e9703dd5a21e73424162461a323d69b585c6b8020bfaca8b8eeeb853e"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.16.0/secretli_v0.16.0_darwin_amd64.tar.gz"
      sha256 "bac176a84e977b3ee1a55efdb260073078de8a6a843dfe95a668aa6d398c1da7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.16.0/secretli_v0.16.0_linux_arm64.tar.gz"
      sha256 "95d7e26fa3fa3b5897b0e68a22fee225b2e709bf16ee550ba9cc86a8d062aaf1"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.16.0/secretli_v0.16.0_linux_amd64.tar.gz"
      sha256 "436998b125f42ab4422325b107a943d72e05529b5ac38f1cac60b557b1854b7c"
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
