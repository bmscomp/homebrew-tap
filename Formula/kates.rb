class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.40.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.40.0/kates-darwin-arm64.tar.gz"
      sha256 "c861e59133eb14f3801a04c9566ec85820b1794a877c572f25389627ec4042ef"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.40.0/kates-darwin-amd64.tar.gz"
      sha256 "f22a31665c4d16a0a379abf778f776135aa62aeb5fdd1a0f99ead16dab035c0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.40.0/kates-linux-arm64.tar.gz"
      sha256 "82606ac571a76ecf8ee0056b09738361015ceab4df426e6560fed1c645f4e4d9"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.40.0/kates-linux-amd64.tar.gz"
      sha256 "5a6fec725a9d2393dce145e9ab5342f164554f8dccba692e2aec4196a3bfd8e6"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
