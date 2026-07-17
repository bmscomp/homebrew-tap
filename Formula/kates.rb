class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.21.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.21.0/kates-darwin-arm64.tar.gz"
      sha256 "0682c406dfb42898f34b88c113321d0fe55a3cc4d6fa2c4d751751f73c3b5540"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.21.0/kates-darwin-amd64.tar.gz"
      sha256 "0bec139e5c7b89828a7c950f50bab8a27042a628bf0566aed3a8be05c2ebe3b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.21.0/kates-linux-arm64.tar.gz"
      sha256 "ed4b4b2d779ab116d47fa71555303a3af7dc12076502624574d55f0d594ab355"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.21.0/kates-linux-amd64.tar.gz"
      sha256 "13df0e155f40270176075b76dae69393c1eda361fe195ebd55b82df77812fd00"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
