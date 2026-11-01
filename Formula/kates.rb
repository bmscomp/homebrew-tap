class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.34.1"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.34.1/kates-darwin-arm64.tar.gz"
      sha256 "68f9a640d716fc0ceae6de91cae87240eafbf7fb6bd9a6a82379f74f82073af1"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.34.1/kates-darwin-amd64.tar.gz"
      sha256 "b8deb0a2c9eb8f6308efdace741c5769a74f445d00bdd807cabb75cb4e735109"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.34.1/kates-linux-arm64.tar.gz"
      sha256 "75ef991657cb1518203a7c7ed1850b49670b8d687018ba52cc76dcc55ec71b9e"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.34.1/kates-linux-amd64.tar.gz"
      sha256 "68273a2f91605c673279417463030a32c6c0b904617b7f2e2d9b2a25bc9d567d"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
