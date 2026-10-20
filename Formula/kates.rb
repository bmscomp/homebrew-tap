class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.27.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.27.0/kates-darwin-arm64.tar.gz"
      sha256 "df235b0c5678cafc97674974777ad7af3c255716882260e60089ef1ac1f38efd"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.27.0/kates-darwin-amd64.tar.gz"
      sha256 "21c2170ba531b7df6e4c285b4ad3d3c0c3f00249a47ed93f5cb0c32be9bbdefb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.27.0/kates-linux-arm64.tar.gz"
      sha256 "1b64b8627ff4e7bd92c728bfb8fb9b491c634ebc60bc5ad81dd040e207e15533"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.27.0/kates-linux-amd64.tar.gz"
      sha256 "d1c1cf5979a9efab745eaf5a87c08738114e6cedee1d18ae6a0d4ff4fda38075"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
