# Written by the release workflow of secretli/cli for v0.10.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.10.0/secretli_v0.10.0_darwin_arm64.tar.gz"
      sha256 "510d5b63e900c484ba6da221a74b3530db5b8647f5671959143a919121f8cfd8"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.10.0/secretli_v0.10.0_darwin_amd64.tar.gz"
      sha256 "d34709978a710496d845b9bc061ca725ee8ecde2cf26902d1eab8d1bbd3fb212"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.10.0/secretli_v0.10.0_linux_arm64.tar.gz"
      sha256 "9979da83bf5a26adb2abae760f085894c4f8bddce64e556ebda2e8512afe001e"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.10.0/secretli_v0.10.0_linux_amd64.tar.gz"
      sha256 "68165f4fc2869c34a5203a86dd08f0442600bdd3cedd3579682802b58f4a631b"
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
