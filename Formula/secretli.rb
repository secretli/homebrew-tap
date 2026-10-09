# Written by the release workflow of secretli/cli for v0.9.0; changes here are
# overwritten by the next release. The formula lives in secretli/cli's
# scripts/homebrew-formula.sh.
class Secretli < Formula
  desc "Share secrets encrypted on your machine, with links the web app opens"
  homepage "https://secretli.app"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.9.0/secretli_v0.9.0_darwin_arm64.tar.gz"
      sha256 "99ffd132de40a7726c4c1ae1fd04552834b55bd830f4f30746d87dc2b7441121"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.9.0/secretli_v0.9.0_darwin_amd64.tar.gz"
      sha256 "f3efe1eccd19bfb9e8e3d6401046c4d35a1eb853c7b317be436cba5fd4a9d60d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/secretli/cli/releases/download/v0.9.0/secretli_v0.9.0_linux_arm64.tar.gz"
      sha256 "661ade67507ced56ae576d90a60ad8005e7d5b390183936f4f02bd67d6bc5989"
    end
    on_intel do
      url "https://github.com/secretli/cli/releases/download/v0.9.0/secretli_v0.9.0_linux_amd64.tar.gz"
      sha256 "2e4f64cff7843c0534cc8b5512d3005fbd82a414e6bcf3c0cf3b03320d401c35"
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
