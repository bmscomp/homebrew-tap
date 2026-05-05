class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.6.0/kates-darwin-arm64.tar.gz"
      sha256 "5d9502286f1e6da9b50adb56c0ebe689d33a34ca9317aa0e0a59ca035edbc638"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.6.0/kates-darwin-amd64.tar.gz"
      sha256 "5f9ce61652578fab1d372f756321fa6bd915d7971789dca959c52c79d70d016c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.6.0/kates-linux-arm64.tar.gz"
      sha256 "78d94daa30d32bc902d0b138adb7f7e42226cf21b2c81b0500821644c6ff90dc"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.6.0/kates-linux-amd64.tar.gz"
      sha256 "92a8bce78ecdbeb41c7829081f823644eee1554852442aedf0a19aa9ca2d4c63"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
