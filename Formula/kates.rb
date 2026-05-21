class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.13.0/kates-darwin-arm64.tar.gz"
      sha256 "b4c0d35bfb1e10d2ec9fe1ba0dc429f3f816ef74e26f4ef0c926d5dd1fdc7923"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.13.0/kates-darwin-amd64.tar.gz"
      sha256 "e2d711eb5195fc41c65e5f5225de94052b8fb21700b02191e1f6675ba32528ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.13.0/kates-linux-arm64.tar.gz"
      sha256 "1dd7c733124cc8beca5c5a1c27b0df10598d165acd3a2ea07563cc37802086c2"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.13.0/kates-linux-amd64.tar.gz"
      sha256 "e98809eb3e6cfce9427097f6eb30229667053133ac610923e2c1cf5bd3f76f72"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
