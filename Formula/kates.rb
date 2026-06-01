class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.14.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.14.0/kates-darwin-arm64.tar.gz"
      sha256 "42baf94b5d04895b476b817e3d49be5cfac4b173986b5ff4d8d61535489b4b4e"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.14.0/kates-darwin-amd64.tar.gz"
      sha256 "ce8a3f5bbf1bcfaaa432fbf84dd3d01912156b0c1af82129f4fb496c6c67be46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.14.0/kates-linux-arm64.tar.gz"
      sha256 "364e5db3c1a41c8163bb62569305d054c5ad5f203544ebb5b85b15c4eeeb5c05"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.14.0/kates-linux-amd64.tar.gz"
      sha256 "50df6156ae15be58093a431a53965413cc456a4547f8b6fe9059f90b62a76bf2"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
