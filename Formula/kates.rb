class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.18.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.18.3/kates-darwin-arm64.tar.gz"
      sha256 "4e16c08b751de4ed1cad4e06f494e0fab03d89cd66bc41685411a940d3719867"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.18.3/kates-darwin-amd64.tar.gz"
      sha256 "38aebb7b4caa3945319e7b03b7756cab1a5422e47d0884e0ce565bbda6dc4501"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.18.3/kates-linux-arm64.tar.gz"
      sha256 "79c15c8900baaf95ebbfd6051ceefd00692de4029548702aa365391b1919af33"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.18.3/kates-linux-amd64.tar.gz"
      sha256 "94612b7b1a92b334e739efb64cc4562ce0faf6b9262b9b93d1f61b424940e522"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
