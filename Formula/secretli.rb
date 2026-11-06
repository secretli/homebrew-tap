# Written by the release workflow of secretli/cli for v0.17.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.17.0/secretli_v0.17.0_darwin_arm64.tar.gz"
      sha256 "29fcd0285b74cb84eea85adc806ac27af9c92196989ac99accd2ced365e1a61b"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.17.0/secretli_v0.17.0_darwin_amd64.tar.gz"
      sha256 "41249d34b0e02a48154a3e6b926a678ab30c081076f8ad5a1e7e9f746dc9c414"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.17.0/secretli_v0.17.0_linux_arm64.tar.gz"
      sha256 "ab183d6a9027d8231c6e8e6a43b6250c03147c23ed768e3d69ed92f67e7835de"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.17.0/secretli_v0.17.0_linux_amd64.tar.gz"
      sha256 "81ed19947e04208d414e9388da08bb46f3af4c841c0d516b1138b49b564e3e16"
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
