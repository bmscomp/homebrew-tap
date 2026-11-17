class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.41.2"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.41.2/kates-darwin-arm64.tar.gz"
      sha256 "1e17b179380f347960b85943f0fd51d5e727f8f8b77c925ee068d9245f3c96e8"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.41.2/kates-darwin-amd64.tar.gz"
      sha256 "5e5a38c38d6f865ae8753c3f3459cca84a94f5752ca5c91583ca668b9db275d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.41.2/kates-linux-arm64.tar.gz"
      sha256 "f2963cf6e1e52490865997289b9601ac197ae10a7c277bb753cf049b85ed216c"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.41.2/kates-linux-amd64.tar.gz"
      sha256 "abb2d73db689ec101a9fc80e4ab3c0751e0c1f1c7367868942becb57d694b5f7"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
