class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.20.0/kates-darwin-arm64.tar.gz"
      sha256 "63e08575e7f32a9588ef4b7ea70e0eb808f813f2bec415093543064e00cd9527"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.20.0/kates-darwin-amd64.tar.gz"
      sha256 "589fd3d39b7b0575e414e6be6e0548adddb90e00257a65101304b037918375b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.20.0/kates-linux-arm64.tar.gz"
      sha256 "c96ffa301208605ac49064b2edf9d825d701e7a10760a1c9d3b62a4ce6d9379c"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.20.0/kates-linux-amd64.tar.gz"
      sha256 "4234a9782a77d12d95a8041434d3bbca337ebb85619232fc662c135ca4138d57"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
