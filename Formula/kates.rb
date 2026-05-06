class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.8.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.8.3/kates-darwin-arm64.tar.gz"
      sha256 "3da83f22185ae3690b9224604e8bdf8392ed7085079f3219969d6d816e1d0dd2"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.8.3/kates-darwin-amd64.tar.gz"
      sha256 "5f4777a09b7e57cc4bfa300fdbd636f21c8356bc1fefdb696f7bec4515d094b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.8.3/kates-linux-arm64.tar.gz"
      sha256 "0cb9e356b8d9b8dac32d64bda2dff2e2595dc88223504bae428e0b8d61324f7c"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.8.3/kates-linux-amd64.tar.gz"
      sha256 "79e14e3418b4b2e7e3a137d2cb7eab52b4aab35819e28a88d12edda5c669a097"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
