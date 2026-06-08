class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.18.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.18.1/kates-darwin-arm64.tar.gz"
      sha256 "9b3efb91a5716fb3a9df84c7012bad02f9d1242834f4ac262e933784e892e987"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.18.1/kates-darwin-amd64.tar.gz"
      sha256 "c1ab67bc924ab43e2964ac92ec0467134c1574a30d7713e60dc55063ca2660af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.18.1/kates-linux-arm64.tar.gz"
      sha256 "4c32f1ed1b3ecc2377aeea2b96f2a863a8ad3520d720e8b29bd7b9c326bb82ab"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.18.1/kates-linux-amd64.tar.gz"
      sha256 "4b0dfd993d7c82807f4121e3d7945f75f6d3c62ba271d4b44b63188b20abd031"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
