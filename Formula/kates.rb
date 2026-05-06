class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.8.0/kates-darwin-arm64.tar.gz"
      sha256 "f2757f847529d19d4c6b6034ec4343c1ebaa154f7a859f26e0d2ce997cc2657d"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.8.0/kates-darwin-amd64.tar.gz"
      sha256 "29f40a9a3f42fc5c400273c050cc6995983f55a2838d030107aca09d48556989"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.8.0/kates-linux-arm64.tar.gz"
      sha256 "87848fb10ded691ede7abe259e2fd76794ecf1fd864bf9c11d87a29460453cde"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.8.0/kates-linux-amd64.tar.gz"
      sha256 "2ef32e6c36aaaf97b43cc54196fc6a379dd13d379caaca02b7f4d1e5a5f5567f"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
