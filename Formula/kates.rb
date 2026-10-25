class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.30.1"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.30.1/kates-darwin-arm64.tar.gz"
      sha256 "8deaf8e0303a769238ebbed867235acd62d9c79de0c565b86bb1441357dc5209"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.30.1/kates-darwin-amd64.tar.gz"
      sha256 "c1a9627063e2ba6a1846850df336468866ead33ef5395992c088b2690454e610"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.30.1/kates-linux-arm64.tar.gz"
      sha256 "d470a417ac4e335314d4f62b8ff4132a262e180a8cb4535b4fef67503d1837da"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.30.1/kates-linux-amd64.tar.gz"
      sha256 "8bfa79f52091c62269b9896fcb1c9e4ae6767ce81766e2e812e0f7197f09e663"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
