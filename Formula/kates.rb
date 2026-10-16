class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.25.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.25.1/kates-darwin-arm64.tar.gz"
      sha256 "7429a935ac703021de270be25397ed546d3894e17d68439bdec92a2dbef2a33a"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.25.1/kates-darwin-amd64.tar.gz"
      sha256 "88383545b71f821e571f44f32996925cc6047f0d23b27a93406cb268663481a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.25.1/kates-linux-arm64.tar.gz"
      sha256 "c089a900b80ea8e8fed8cc1f2fd0bd9f0c5dbedbbbd244d502a0a8879c521684"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.25.1/kates-linux-amd64.tar.gz"
      sha256 "41b8f6a387506966eff511ab4fa7910211b34e09444fbcc01eb0153b60a14e93"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
