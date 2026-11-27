# Written by the release workflow of secretli/cli for v0.20.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.20.0/secretli_v0.20.0_darwin_arm64.tar.gz"
      sha256 "90692bc69ead1ab87607768351627518dbb079c34afbd10a62a8f00427bd89c4"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.20.0/secretli_v0.20.0_darwin_amd64.tar.gz"
      sha256 "d33957d2903b4cc023d5922b67c4046e8e58b221ff77247377713a360e18188a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.20.0/secretli_v0.20.0_linux_arm64.tar.gz"
      sha256 "e1c2fb1fea54e01fce5571e7e0962e682e840c3d1b433d6774f42c1ba5e18c53"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.20.0/secretli_v0.20.0_linux_amd64.tar.gz"
      sha256 "b0168fa8fffa00160a69e00f0a7a877529ed7463441fe25f462bd3a5d5df508d"
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
