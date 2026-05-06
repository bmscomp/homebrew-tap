class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.9.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.9.2/kates-darwin-arm64.tar.gz"
      sha256 "f507f1113c3078d0a827f91547b606f5b1883155dccacb4c2a4fe9fa2d7d6533"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.9.2/kates-darwin-amd64.tar.gz"
      sha256 "62a8e35c98f7753c7c19e9b00e9086c87f6c91f59f7d1b8878beb6489d85c165"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.9.2/kates-linux-arm64.tar.gz"
      sha256 "2e9566568592b2d243f057e2290a55924782e327a2c5ac46e759d2f5bb7005e4"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.9.2/kates-linux-amd64.tar.gz"
      sha256 "7e43c569a52cdb1adec4bee9c9e265e608ecae16b1bf607fc18469376d860be5"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
