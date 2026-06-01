class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.15.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.15.0/kates-darwin-arm64.tar.gz"
      sha256 "3273637cb4a043b066d0852d1c719b317165f3d367e613e1af556d9e6437b75d"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.15.0/kates-darwin-amd64.tar.gz"
      sha256 "bce6c81c2834c5c37ce782200026d55dea66ca62636dc267c9d4fa7bdb81bddb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.15.0/kates-linux-arm64.tar.gz"
      sha256 "09722c8257bff8c77d4eb3aefa20b8eeca991344cf7a84ca7bd1b395d123ff43"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.15.0/kates-linux-amd64.tar.gz"
      sha256 "f9fe21bdca661dd540cdf23d8d144232b65c01c83f15ebd2ec139230d34a2123"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
