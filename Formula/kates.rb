class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.9.0/kates-darwin-arm64.tar.gz"
      sha256 "9e754c178a46d61ba69d397bd0e3ed50b0b38ff1b826d3967769f5211e81513a"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.9.0/kates-darwin-amd64.tar.gz"
      sha256 "124ef0d8f321a29a50ae18f6964d53cb22c03968b5672abb2d4818c77091d034"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.9.0/kates-linux-arm64.tar.gz"
      sha256 "7c06c4905ca7df97438a74614aa7073ef7fcd384aa6b91d1143ea10d295a20db"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.9.0/kates-linux-amd64.tar.gz"
      sha256 "ae5fc9a2189489db8fbe826d5a6b9227994377e38e27500b0478e0725a1dc979"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
