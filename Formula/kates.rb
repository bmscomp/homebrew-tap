class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.35.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.35.0/kates-darwin-arm64.tar.gz"
      sha256 "881e166fbe580239942397aadd0a4bf65e396fd2409316d8996dba6d98327a5b"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.35.0/kates-darwin-amd64.tar.gz"
      sha256 "fddbf857b3479782ad3abd92ee7751bf43447f569df210d3ecfd6231fa4792ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.35.0/kates-linux-arm64.tar.gz"
      sha256 "bf065fbf6c90ef40cb00a1c3f3fd9103fc2867f78a5741d796bb4bb48a9bcc0e"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.35.0/kates-linux-amd64.tar.gz"
      sha256 "8515ac27ad53874893ced7bfd772fad2bf0ec57eb42af0ae8100c60ece448f6c"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
