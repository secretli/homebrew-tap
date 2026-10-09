# Written by the release workflow of secretli/cli for v0.11.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.11.0/secretli_v0.11.0_darwin_arm64.tar.gz"
      sha256 "7b139c765724e0d1fbd303c1fa028d943fe579ffc6dbd7083d30c8ca74de3323"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.11.0/secretli_v0.11.0_darwin_amd64.tar.gz"
      sha256 "4555c44182b4a2ce538d99579a31bc778d0a74300810a55823c96c7f068d4075"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.11.0/secretli_v0.11.0_linux_arm64.tar.gz"
      sha256 "c4e2cb414b31ad8034276c3f6bcb03df444b521f8780ba34878b3879a2dba6a3"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.11.0/secretli_v0.11.0_linux_amd64.tar.gz"
      sha256 "50879b1cd8dfde0df62c62ee1a70df8c674e7b7aeab4b5f8d9d5558b8603b3fc"
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
