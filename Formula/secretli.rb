# Written by the release workflow of secretli/cli for v0.14.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.14.0/secretli_v0.14.0_darwin_arm64.tar.gz"
      sha256 "721b64ac6136e7f9a3515daacd04d20a90111f3704fca9644df35d7dd36cdcbd"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.14.0/secretli_v0.14.0_darwin_amd64.tar.gz"
      sha256 "730a1d250d7645292223d59d95689d007ba1ec035d40935dfd379bf800166843"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.14.0/secretli_v0.14.0_linux_arm64.tar.gz"
      sha256 "3f1ff30340534928ea3e5b0aa9e4b608f869bf3d5910f978d0efd0b40e99f01c"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.14.0/secretli_v0.14.0_linux_amd64.tar.gz"
      sha256 "ab84897ec150615b997045a563448412a3416f8bd8e617c09d85a7d314a7c80c"
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
