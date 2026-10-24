class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.29.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.29.3/kates-darwin-arm64.tar.gz"
      sha256 "5812a983df360673caec744f8561eeed0ed02ecfadfb55b3e75c667401088c64"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.29.3/kates-darwin-amd64.tar.gz"
      sha256 "681a71b2810c5acbf71a27ec3e72b172817a36acea3db02bafd8c694a661d7ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.29.3/kates-linux-arm64.tar.gz"
      sha256 "70ecafec7f6262933948295c313253300a5e2f3baff248d0c148e7dd8193c0f0"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.29.3/kates-linux-amd64.tar.gz"
      sha256 "bb1ef2556021624cecc0bf057594ea6ca5c0cb9cbadfff502d415958fa93d88c"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
