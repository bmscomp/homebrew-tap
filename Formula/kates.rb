class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.31.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.31.0/kates-darwin-arm64.tar.gz"
      sha256 "62882bd3ac5d33b527d0e3c83c8c3c721b85bdb2da03520c1061d8b67a3619d3"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.31.0/kates-darwin-amd64.tar.gz"
      sha256 "89fc503cd03174ebd8c70816b5225f746c7e9360e4d090b5bf3dcdce287bb77f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.31.0/kates-linux-arm64.tar.gz"
      sha256 "640067c1631b680762b8d59f194e8ba8c8244cb1fcc5054548d148947ea4ed6b"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.31.0/kates-linux-amd64.tar.gz"
      sha256 "95a22e0c015c73035f7f55f6aa9c5254262d53bf94e6b12c25f9fd9b4485f26a"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
