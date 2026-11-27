# Written by the release workflow of secretli/cli for v0.19.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.19.0/secretli_v0.19.0_darwin_arm64.tar.gz"
      sha256 "f5e1b749d25d8e88140731ef482b1e955996d2a0a183610f89c10d41fb45581d"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.19.0/secretli_v0.19.0_darwin_amd64.tar.gz"
      sha256 "5501ad2d793ff6412ad72e8767867711335b91e316fb1da9201826c47242b3a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.19.0/secretli_v0.19.0_linux_arm64.tar.gz"
      sha256 "4ce79a1f5f1a555a900e74e53a421613f44e986ba8df8bc8e453d4d2e9dfebbd"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.19.0/secretli_v0.19.0_linux_amd64.tar.gz"
      sha256 "3b1a8319715e5660b95357b0f018c004a747a33d553afa599ecc7259621b62e0"
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
