class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.37.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.37.0/kates-darwin-arm64.tar.gz"
      sha256 "7fb9214a69a54e376f505b879cd5e990c87b7a180549ab8bb1865c101a4152a1"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.37.0/kates-darwin-amd64.tar.gz"
      sha256 "06f65ad8797ffe8f58406ca05d69b60a11fb8d435eecf3baee076dde49cd20a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.37.0/kates-linux-arm64.tar.gz"
      sha256 "3115d905419d806ce2f0ae088de147a177e549218ea86ac5ba0333b17ce9a899"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.37.0/kates-linux-amd64.tar.gz"
      sha256 "80f26d4665b4c3d70170ec4b3299b14c61e6d6278837f888d8cabaade224280b"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
