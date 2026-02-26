class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/klster"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/klster/releases/download/v1.1.0/kates-darwin-arm64.tar.gz"
      sha256 "c718a051f1306253b3673761c67480c33e40a6be88ff641e52a887debfb31fb6"
    else
      url "https://github.com/bmscomp/klster/releases/download/v1.1.0/kates-darwin-amd64.tar.gz"
      sha256 "c082b3a6b801f0e05c0967357fc0c0bfcefaeb57f73565752265d20c5afc4a8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/klster/releases/download/v1.1.0/kates-linux-arm64.tar.gz"
      sha256 "4be39b41c9f5c2eb6e040910daf2092d3df3f3cb1bcb856d02c1fbaa8708d38d"
    else
      url "https://github.com/bmscomp/klster/releases/download/v1.1.0/kates-linux-amd64.tar.gz"
      sha256 "26735cf7bc596687d64cf0be9751ad70bf34a1751bc7dc9be785cdcdf59f29cf"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
