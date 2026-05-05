class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.3.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.3.3/kates-darwin-arm64.tar.gz"
      sha256 "403d6ce32e92656de2ce3ca04d4af07db8b416cdd9033734859229080160ce33"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.3.3/kates-darwin-amd64.tar.gz"
      sha256 "c6985fe03d07cc098dbeac63a6f40124b88ca04419f4eb2c79a19df023f76310"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.3.3/kates-linux-arm64.tar.gz"
      sha256 "da8a616e75f730e2c2a8ecbcb2e2e58d12576c1ed644d1f5476ccb6ece645a05"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.3.3/kates-linux-amd64.tar.gz"
      sha256 "6c04783ef0fcbefe6a301e1ea3842b5a3dbf498868798e2c7af18a27a471e2cf"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
