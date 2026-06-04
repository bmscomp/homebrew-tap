class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.17.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.17.0/kates-darwin-arm64.tar.gz"
      sha256 "4f7ea2ae29fbd7a61bbd536a873ad9b9dbedb74ce71de0af9b048312cabdfcef"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.17.0/kates-darwin-amd64.tar.gz"
      sha256 "1f0bf423ea400c9478dc2e026d4ec60bebb2ea2ce293f929f07bff16d8ca3546"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.17.0/kates-linux-arm64.tar.gz"
      sha256 "a36f0394f4eb84c1b6e17698228b315ccddac97a4fa3535f70e98fa1b01ba620"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.17.0/kates-linux-amd64.tar.gz"
      sha256 "5b0edfb92d2dbea2e16532db241143bc341056158898249a121428e03d385cb7"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
