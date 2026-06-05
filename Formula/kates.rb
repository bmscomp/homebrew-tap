class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.18.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.18.0/kates-darwin-arm64.tar.gz"
      sha256 "6dd18e2d8e4e982bea50aacdf5f340b7202620d835b82d6a38fa5b5cf7012ed8"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.18.0/kates-darwin-amd64.tar.gz"
      sha256 "80df061fe812ed4a8f067efb5cff5cb054fa4827e55353b72156f26174dad96e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.18.0/kates-linux-arm64.tar.gz"
      sha256 "f5c06218419f62ee0b079a653970986010922ee3fba77d384fd92b29976c8a1a"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.18.0/kates-linux-amd64.tar.gz"
      sha256 "4a3d980db04fd92a3955a1319b39898abe4934eaa23fbcfdb7ad44cd12762cf7"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
