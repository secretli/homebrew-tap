# Written by the release workflow of secretli/cli for v0.7.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.7.0/secretli_v0.7.0_darwin_arm64.tar.gz"
      sha256 "828e704956742ee0316c48c9a15757396f1daab2b585ffa9d5af45c9a2b68270"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.7.0/secretli_v0.7.0_darwin_amd64.tar.gz"
      sha256 "dea7dfdd088911f0085d5f4af6b9c518f8d8c441264d99ea88eaeacef1c129a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.7.0/secretli_v0.7.0_linux_arm64.tar.gz"
      sha256 "4c45e3d8d4ecb4f700c4d7827b2b93228bfec20014d410ad6b00e7ac3357b7da"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.7.0/secretli_v0.7.0_linux_amd64.tar.gz"
      sha256 "830bc4b6c712856eca380f5f672bd73db100d3a28e84971257dd7ac53a8375ac"
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
