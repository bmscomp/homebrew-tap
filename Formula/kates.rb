class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.34.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.34.0/kates-darwin-arm64.tar.gz"
      sha256 "6af069da8ccfdbc6d4c4d85aae6a74010739ebc62bc16e57c74369b8692a5621"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.34.0/kates-darwin-amd64.tar.gz"
      sha256 "bef846ba9b63922af554cdc80b997a6a32880051b3fb2bb460452d8adbedc9a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.34.0/kates-linux-arm64.tar.gz"
      sha256 "d4c7707f6953d78d3f759262e1572eb1e7a2c3269d3462ac7b008e51cdde72d8"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.34.0/kates-linux-amd64.tar.gz"
      sha256 "ab9ec49d2045a144a128b57432871c33dfa49cef44f1be432cd8fd93c255fad4"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
