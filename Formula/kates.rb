class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.41.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.41.0/kates-darwin-arm64.tar.gz"
      sha256 "c8c4fbc059d28d64601f58f14db88956f7125c94388618fc0fa37fdb1ce91044"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.41.0/kates-darwin-amd64.tar.gz"
      sha256 "3a95b1df33bc31476c42447bf7b2c0f345c614903995f4254355a9c2b6d7d22c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.41.0/kates-linux-arm64.tar.gz"
      sha256 "6c44221b00d8bd36d9587696d961351518bb75db13779c92da293f7c155cb18c"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.41.0/kates-linux-amd64.tar.gz"
      sha256 "9f4d1bd12aa97da0db8d7c287118897d664ae8f000c7387a5bdfea0c20fba756"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
