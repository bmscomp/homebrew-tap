class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.38.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.38.0/kates-darwin-arm64.tar.gz"
      sha256 "85a1aeab87145f5473eedce5b1fe6c98f8306a648c6be29b582f836f126afc32"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.38.0/kates-darwin-amd64.tar.gz"
      sha256 "bab964167424696dd512ada8efd99077ecf35154b582c14362b3115a4600da35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.38.0/kates-linux-arm64.tar.gz"
      sha256 "38c51d7af71a681c13b336a56f4cbdf53695cf976c08728badb20835ee5a1635"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.38.0/kates-linux-amd64.tar.gz"
      sha256 "c7d1045be7efc5d70607ee893d64a1c9728e2e35f56a2260facf3b251f5c152a"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
