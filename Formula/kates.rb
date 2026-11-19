class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.41.3"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.41.3/kates-darwin-arm64.tar.gz"
      sha256 "f810cbe15a42da5a6df510d56e8443c4384d33a96b9a5c425683e691d269f865"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.41.3/kates-darwin-amd64.tar.gz"
      sha256 "f361ca23bc9cb771ca1337c3dd2c546c6561f8f1c73b1f87a14e865b67b63425"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.41.3/kates-linux-arm64.tar.gz"
      sha256 "039ded08604260a208ab326872a7d6bca49327f9cf9bd6db21f784d994edb041"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.41.3/kates-linux-amd64.tar.gz"
      sha256 "e5b0fad7bada93c80cf5dead746e282ca7044e5d4e4bf7ed78aabbbe45fc89b7"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
