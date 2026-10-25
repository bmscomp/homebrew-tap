class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.30.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.30.0/kates-darwin-arm64.tar.gz"
      sha256 "77d6fbce55be971578998d45e66b076d39a2c12ca5129124648968e9561d5a09"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.30.0/kates-darwin-amd64.tar.gz"
      sha256 "060aa7a495407f7a2b6e3de4e99b00b56e45ff3e703c16332a4f35e8779c84bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.30.0/kates-linux-arm64.tar.gz"
      sha256 "4d1b459fede77c96a43273f1834ad7f289e003e8b9e39c3b372b7789b6ed3c31"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.30.0/kates-linux-amd64.tar.gz"
      sha256 "fd325606880a303a58f7ff3c113dd49d28cad38f47ce22e3aa93595628c543f2"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
