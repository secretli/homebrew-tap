# Written by the release workflow of secretli/cli for v0.5.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.5.0/secretli_v0.5.0_darwin_arm64.tar.gz"
      sha256 "670974493737ab96945c4bdc3f8ff6741e797979e7343c712fe8406fdae0d962"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.5.0/secretli_v0.5.0_darwin_amd64.tar.gz"
      sha256 "5b15f518bedef4d80f0a096c35f7b27443bea3f01a396d41063f7f9861fb3a0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.5.0/secretli_v0.5.0_linux_arm64.tar.gz"
      sha256 "c6b6030051dbb96dc320bac759c8ac185df31d038232d711f3bd0d47195b4acc"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.5.0/secretli_v0.5.0_linux_amd64.tar.gz"
      sha256 "823036baabde49dc2714388ab44fa239099ecc08fbb4677b3ac3422380c25c99"
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
