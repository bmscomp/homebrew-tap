class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.8.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.8.2/kates-darwin-arm64.tar.gz"
      sha256 "d86a8dbdfb77e0bccaa45ec6f0ef333656d1ff1be6d868baf1cddb5ada78d70e"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.8.2/kates-darwin-amd64.tar.gz"
      sha256 "742221073571f2e8a50fc305ee93490588b2f76b9f07deeeb59cf7cab8cd83c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.8.2/kates-linux-arm64.tar.gz"
      sha256 "daa9a73d4e7a553a24bf30b57f7762142043ddd38b38b707868f84145644e7ee"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.8.2/kates-linux-amd64.tar.gz"
      sha256 "a3553ba262486d16c961e9deb1b385e24620adc9dcb4a5ecf49e136a8d30ceb2"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
