class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.24.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.24.0/kates-darwin-arm64.tar.gz"
      sha256 "a19eba724442cb463ac3f69ee611be991d55b2b15df096ed54d96e14500b0ee4"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.24.0/kates-darwin-amd64.tar.gz"
      sha256 "3ff2a160f3c0964d28470e79ce25e51ce3449e10dae45b24070f1f30dd6e6ad4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.24.0/kates-linux-arm64.tar.gz"
      sha256 "eb1753708f304f5d9360aebcc32558dc503748505bdecefcc191f4626f8bf870"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.24.0/kates-linux-amd64.tar.gz"
      sha256 "6e2ee6bca033682fce777afa1b63265a087528516c8db3a5f9355cf43fc39d42"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
