class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.7.0/kates-darwin-arm64.tar.gz"
      sha256 "d94b253e77d1328364108bd0c339c32dec0d05cfd48a22e8e3479683a51ea310"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.7.0/kates-darwin-amd64.tar.gz"
      sha256 "e3c8b0c3d517c54edd09c56cc7f700260aa3c01cd6bf6612ccbc8e3f71175f8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.7.0/kates-linux-arm64.tar.gz"
      sha256 "5355ccf2ac81829614e06557226c565444ca038275d1332f29a2c46b6059a8cb"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.7.0/kates-linux-amd64.tar.gz"
      sha256 "ad4e5103184cd273a7aa955e10c2fae0afef1ed0474b30c3225f79b6e730f1bb"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
