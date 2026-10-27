class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.32.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.32.0/kates-darwin-arm64.tar.gz"
      sha256 "7ee8fe3de0ab0c20d013a7b1f8462fe2391ad5e7109c7ec3b34c554791ab052e"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.32.0/kates-darwin-amd64.tar.gz"
      sha256 "d2cc2b4e663d57688a71728343bff45d23784112580b5b3f56c4774fed6f692b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.32.0/kates-linux-arm64.tar.gz"
      sha256 "d2de2f2741b5192da698d6887a2ea3aba43cee20cb270eb53f710e4b54bcdbd7"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.32.0/kates-linux-amd64.tar.gz"
      sha256 "08198dbf70e9fac7015d212b5f14911d327e1966f8320f8016808af0b0f1bc25"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
