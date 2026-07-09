class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.19.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.19.0/kates-darwin-arm64.tar.gz"
      sha256 "c25e197a0c1a4d0e09aaf87d67d9c1d78a50c7b32e1a530e5ca162e99484e2bc"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.19.0/kates-darwin-amd64.tar.gz"
      sha256 "9184a0b663bdac148a8888f0384552e22c333f67a7264a1e89d3ff84b2ab4468"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.19.0/kates-linux-arm64.tar.gz"
      sha256 "9f3091ab4e67f1c3c3fd6a8002ad923a88465eab61e5336641f079cc7dd0f818"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.19.0/kates-linux-amd64.tar.gz"
      sha256 "8379d386ead1c5fca8849076a4ba8e6b0eb9c7c769672f2df31f581a1e4c8a22"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
