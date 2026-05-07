class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.10.0/kates-darwin-arm64.tar.gz"
      sha256 "dc6a10720519f2eab7c92f3584dd3f9d5d5d9dcabf9a1a6665d2b9fd0aba10a4"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.10.0/kates-darwin-amd64.tar.gz"
      sha256 "ee98362d23c6c56d23eb8dac402d046042746f50ee23a8b584dd9c950c594802"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.10.0/kates-linux-arm64.tar.gz"
      sha256 "f458262aaad2685eebd509a9a7c087c571bf8191efe35064576e29a92ecb97b2"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.10.0/kates-linux-amd64.tar.gz"
      sha256 "889fe5d0a80b44bc930c3a228b654f3f2ec148c4a8b9e1d154f265e9c97d162d"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
