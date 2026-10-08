# Written by the release workflow of secretli/cli for v0.8.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.8.0/secretli_v0.8.0_darwin_arm64.tar.gz"
      sha256 "d85c151bc8b860504f42e6e84c6f8b6bbadec14cc877ebeda1f7af76aeef28ff"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.8.0/secretli_v0.8.0_darwin_amd64.tar.gz"
      sha256 "47d91c54aa5a8584c1c5a6663141d70e81cdf100c16c5436d12eb0e65cc5ff80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.8.0/secretli_v0.8.0_linux_arm64.tar.gz"
      sha256 "3fae4c2a854954ad3f2c5a7c54c7a7218918f3a69f6a8c038490ae2ac3a411a6"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.8.0/secretli_v0.8.0_linux_amd64.tar.gz"
      sha256 "8af6407a0be1138f962b62e7c7ad30e6dba89c4e2482b319e32c3e04d7600fd7"
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
