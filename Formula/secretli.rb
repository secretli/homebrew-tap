# Written by the release workflow of secretli/cli for v0.21.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.21.0/secretli_v0.21.0_darwin_arm64.tar.gz"
      sha256 "9212202b0d971ce719d8e2f67a4708b8f626e00a6c68746b8a9ce2472f74b6b0"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.21.0/secretli_v0.21.0_darwin_amd64.tar.gz"
      sha256 "a1b31001d9eba8b558ff73bbcacf3746162e3de358efce3798c020faefe6845d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.21.0/secretli_v0.21.0_linux_arm64.tar.gz"
      sha256 "5f8fe327627f2922cf6e8f50d22b696f3cf69326e8e635ea129b3a765b73b855"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.21.0/secretli_v0.21.0_linux_amd64.tar.gz"
      sha256 "a2d1f926f804cdd4e3ad32b388475db30e605cd833fee63f69cff13c821401b9"
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
