class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.9.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.9.3/kates-darwin-arm64.tar.gz"
      sha256 "30a7e29e05c31f1641ff748c0ff7617dadf87e5a8f9d10039cfb54b3f8ed1ce9"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.9.3/kates-darwin-amd64.tar.gz"
      sha256 "6c33f5d93b3a78589583f7bb31c755361b5b5fbc8b8c3ff6cb1b9f0583be990d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.9.3/kates-linux-arm64.tar.gz"
      sha256 "220584c56ebf40975a111a2543077e6aecae126d8d963f673dd2b77223e03b52"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.9.3/kates-linux-amd64.tar.gz"
      sha256 "26cfa9d3ceffaf60f43f2b3e9d4572c0b88b52c1093edbdce317b795835a1f8e"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
