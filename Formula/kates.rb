class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.3.0/kates-darwin-arm64.tar.gz"
      sha256 "cc7cf5e40671b0040013e68ce88ec3acce88acf5296d038701fa209f73962514"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.3.0/kates-darwin-amd64.tar.gz"
      sha256 "3b44be041e113f9b4c0de672bb67ed31af8c7d1178a9c4f6b1ae0c80e2471a57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.3.0/kates-linux-arm64.tar.gz"
      sha256 "110e3ebb0e142c792ce10abbb3ee10b3c8d90b3ac6fc710533a7eff68003c032"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.3.0/kates-linux-amd64.tar.gz"
      sha256 "b2a1e1090a92c9abb4571642fbc5b741f4b1e506ef25b7257def8571ff7539b6"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
