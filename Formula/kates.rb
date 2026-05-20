class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.12.0/kates-darwin-arm64.tar.gz"
      sha256 "6a057aa28c4cd034287d3c30ea849fbf1988dff465690de16cf8d2b30f0d40fd"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.12.0/kates-darwin-amd64.tar.gz"
      sha256 "3c41f67dbcd40e6682161f46d90e0636cea95af0b7a516dacfe3c8c2657874e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.12.0/kates-linux-arm64.tar.gz"
      sha256 "a58c1f4b2e7ed08cdf40fae110f7842637cdd13d09baceef6ae8ff9fea2f51c8"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.12.0/kates-linux-amd64.tar.gz"
      sha256 "f586bd532802891059bf6a57f57aca26916646c099bb2c5f7689748e2688ab09"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
