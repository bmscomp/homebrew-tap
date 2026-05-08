class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.11.0/kates-darwin-arm64.tar.gz"
      sha256 "d3a4b703731e28d6d14f28ba4cb46f3037e4417a64638bd8fa7e064bd2e2f883"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.11.0/kates-darwin-amd64.tar.gz"
      sha256 "1fbac002cd78a5b224dbc04e7db6f073a9dc5082c15bbea6ee56b93ee509ce35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.11.0/kates-linux-arm64.tar.gz"
      sha256 "f37d574e55a37f8a8a09a7272c647a6afc81c20ad54d976fb6b955ab4dd3cbf2"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.11.0/kates-linux-amd64.tar.gz"
      sha256 "66f78b2d471cb45d198cf8073fc9cf5461bb0e06d45d22f98f184e9ed3f3ff47"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
