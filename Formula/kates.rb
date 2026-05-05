class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.3.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.3.2/kates-darwin-arm64.tar.gz"
      sha256 "8d6d9cd6b62dfce78c5975e4e5efada5abde66efa732b5428a9b5462d3935e6a"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.3.2/kates-darwin-amd64.tar.gz"
      sha256 "9f2ed1abedf6b587365e6eb6e1dd40f150659cc3b3e57f7b680d73b613b8f07e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.3.2/kates-linux-arm64.tar.gz"
      sha256 "cd54154b342c7f92f7d1107d67334bf1ed181067afa0a64ff2e092929ce5c975"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.3.2/kates-linux-amd64.tar.gz"
      sha256 "4e3e8ed4165af77e7726fb70085a0dc6c71b96542eb8e9913ccbe8354eb56ed7"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
