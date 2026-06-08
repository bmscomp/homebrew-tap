class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.18.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.18.2/kates-darwin-arm64.tar.gz"
      sha256 "e3d751199501cfc6596dde27d9bb2c2662de778a647ec0b6e3e03e8a66fc2df1"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.18.2/kates-darwin-amd64.tar.gz"
      sha256 "2fd1792270ca755c1027ce54d57776b6308f443b59ed2575f1b27af7a753fff5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.18.2/kates-linux-arm64.tar.gz"
      sha256 "3d24c74dbb0e9a5c9b54d7584b1fbb295a2c6d633da65c7688a56b4aed7adb55"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.18.2/kates-linux-amd64.tar.gz"
      sha256 "6c941158d7f4068fbc74037de853382b3f02a70c8edd8f8dd70f82c9638d14d9"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
