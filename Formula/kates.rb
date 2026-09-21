class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.23.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.23.0/kates-darwin-arm64.tar.gz"
      sha256 "0fb17fa731f2349d12346435c6688835645aae07e9cfd74dc7dbfdf5ff2398f6"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.23.0/kates-darwin-amd64.tar.gz"
      sha256 "dc64a8123d445c0c27ec86974829c3fc472e47e72f608cf0d94073e417ac79e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.23.0/kates-linux-arm64.tar.gz"
      sha256 "164e28d8af2345f8491cdc40f11aa259586bcd090f5dcba57c49a7aa93c4c7a5"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.23.0/kates-linux-amd64.tar.gz"
      sha256 "b998bd5d02eaac398ae492e5db03161e36d8612e93a9221e0f1e3b7188374722"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
