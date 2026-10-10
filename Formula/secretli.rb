# Written by the release workflow of secretli/cli for v0.13.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.13.0/secretli_v0.13.0_darwin_arm64.tar.gz"
      sha256 "3df7f002a20368d0848d5c560e8fda5787adbedf96b46d0c5cc6743fa5df40a5"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.13.0/secretli_v0.13.0_darwin_amd64.tar.gz"
      sha256 "4fd6a844342a8e98d5cffb841304b6f503cdd50f53bc04ad37c8156a7e643bf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.13.0/secretli_v0.13.0_linux_arm64.tar.gz"
      sha256 "20ae5c3898d854dd41346f4bba9b083bce4c3911af852cb808ebc6c022b18950"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.13.0/secretli_v0.13.0_linux_amd64.tar.gz"
      sha256 "3834635e787b94b7884994b78f459d6fd2c91e2bb5f569c8c14bf3394f176c2e"
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
