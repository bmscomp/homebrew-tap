class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.28.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.28.0/kates-darwin-arm64.tar.gz"
      sha256 "38257d6bf6e97245547e68ace264227cfc551091981e68da9e277b5291c593dc"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.28.0/kates-darwin-amd64.tar.gz"
      sha256 "3b1c807bd8490f2023856289b837166017caab627f9af99a64b88e52f8a1843a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.28.0/kates-linux-arm64.tar.gz"
      sha256 "91731560967afc8a3b70b0a761c817cba6b53c44caf4c5a150eb46cd69af2735"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.28.0/kates-linux-amd64.tar.gz"
      sha256 "fb8fa507bb29ba2f211cf79ff4913071bb7f90570dc490ea6599cd0f1610b0ad"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
