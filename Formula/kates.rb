class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.25.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.25.0/kates-darwin-arm64.tar.gz"
      sha256 "1da0977c713034f0f989fa49483d2281ffacdfabdaec93276087b58e41b11beb"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.25.0/kates-darwin-amd64.tar.gz"
      sha256 "45eea7159fe49552743ff0520e68d3a3e815a81c85c5081fd0955d84649561d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.25.0/kates-linux-arm64.tar.gz"
      sha256 "ee2bfb2ee26627f4642edb9da218511d4821d5a7816108bfd7fab1c1ad667b28"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.25.0/kates-linux-amd64.tar.gz"
      sha256 "532fb3df9560ec64e84e91f7c98e7b0717d92ab933272f18afb89804b2d0f043"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
