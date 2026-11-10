class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.39.1"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.39.1/kates-darwin-arm64.tar.gz"
      sha256 "5e2e62752b8f59aa0e5dbd347d353bd3366583c24a8a641abdbd9afb2b5eede8"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.39.1/kates-darwin-amd64.tar.gz"
      sha256 "0b6e4214dde76d3c07960bc8731e0c806298eb1d8e4715a47ca62e62173d95c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.39.1/kates-linux-arm64.tar.gz"
      sha256 "2bab2a979f1e6b0abbca66312de0799bd7b1df9c04147d6e12ba2c1117d3392a"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.39.1/kates-linux-amd64.tar.gz"
      sha256 "1a9f63a70314e88ce794031e0e0ace57a19099b8879ca283e1fbcc427bfc6eb2"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
