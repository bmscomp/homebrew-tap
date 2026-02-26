class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/klster"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/klster/releases/download/v1.1.0/kates-darwin-arm64.tar.gz"
      sha256 "59e9f3f1d79eda62abc31b5778e298c505a655084028d24dc6ab93f437b0471f"
    else
      url "https://github.com/bmscomp/klster/releases/download/v1.1.0/kates-darwin-amd64.tar.gz"
      sha256 "08affd0f1a2eb1c20096cf129e6b61e742864086379864ae1f981dbbb36fb323"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/klster/releases/download/v1.1.0/kates-linux-arm64.tar.gz"
      sha256 "323fb12e3564064afccde86c73bcbfc27caefd2604a4c46662d190e9f7406804"
    else
      url "https://github.com/bmscomp/klster/releases/download/v1.1.0/kates-linux-amd64.tar.gz"
      sha256 "c23a36953a2a727c568274237eae1d2182f7e898fd987462e67b852d330087ee"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
