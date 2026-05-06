class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.8.1/kates-darwin-arm64.tar.gz"
      sha256 "5e3b02c0e256a6cddda6ecee5e80abe2c27cda0ed5d3a5b213dcb416c02a3224"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.8.1/kates-darwin-amd64.tar.gz"
      sha256 "97fbd12e9da30f545a5552b1745aec0d8ae559f884910d3f8d5a4cbb2b611c65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.8.1/kates-linux-arm64.tar.gz"
      sha256 "cf9625364a007755169926429d2f2941a592e4d640c403e2727afcdbc696159a"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.8.1/kates-linux-amd64.tar.gz"
      sha256 "a6efcd44b0b400520694818f5aab8f46834671764d587f9926b6198eedf282b7"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
