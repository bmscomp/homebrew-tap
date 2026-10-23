class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.29.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.29.1/kates-darwin-arm64.tar.gz"
      sha256 "438f13e254b07863970224a624a17735b174cdba407b53bd2c63985c7958ced5"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.29.1/kates-darwin-amd64.tar.gz"
      sha256 "58405ac676a19104c886b6eab059f55cff0e590a0632835764ca8ef5da5c6439"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.29.1/kates-linux-arm64.tar.gz"
      sha256 "a58e5978f9bc08c17b3caca587343ba5354d1eecafdd6fc35b140c00bf4b8f86"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.29.1/kates-linux-amd64.tar.gz"
      sha256 "bdbdd3417705d958d29af5e19bd2318c5d46b8b3ba479d184c569536bf98801c"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
