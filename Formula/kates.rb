class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.26.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.26.0/kates-darwin-arm64.tar.gz"
      sha256 "fcdaa8b687b6a4628a670de54efc9ae4e71e10293d59ea711f1260b52955859f"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.26.0/kates-darwin-amd64.tar.gz"
      sha256 "cb0aa6f5e2d2d11b14a65509d516e04165bf53148a39d299328f459e80eddab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.26.0/kates-linux-arm64.tar.gz"
      sha256 "58362077bfc8d08cbb1029231f99f340a4dba83884987a4389d6eaf4c99ceb16"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.26.0/kates-linux-amd64.tar.gz"
      sha256 "c548301f83de34d433ae6f95970b43355951f8b9e6c1dbad9198d2d2dae597c9"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
