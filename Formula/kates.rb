class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.33.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.33.0/kates-darwin-arm64.tar.gz"
      sha256 "868df58824cf3982e6ccbe32bcf891a747a0aca94991d2c357de3a86825754b1"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.33.0/kates-darwin-amd64.tar.gz"
      sha256 "d04b8db8fd69147734d91f007849d24c214655f230181f29cd99be9dd2dbdfaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.33.0/kates-linux-arm64.tar.gz"
      sha256 "667a2663c258294a13378d25b2e6ea9e6b0c41fff7c58518cfc74a28ed37c0b3"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.33.0/kates-linux-amd64.tar.gz"
      sha256 "b4e66b15f95b1b3801c5aa19469983e9d08d331f96cb37cecc1c236cd07ebbf4"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
