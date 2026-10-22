class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.29.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.29.0/kates-darwin-arm64.tar.gz"
      sha256 "bcd0e694a6e389840a049a61f70b19ddf7d592661d92e700b417b11c6e9b7e0e"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.29.0/kates-darwin-amd64.tar.gz"
      sha256 "eafe9c5e1878e42c51724aeebd8281f4394eb62646078257bbaf6472e8372f0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.29.0/kates-linux-arm64.tar.gz"
      sha256 "5a950f01959bae2d8aa28230105b14e7a408a19368a41f027d534a91a9f83649"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.29.0/kates-linux-amd64.tar.gz"
      sha256 "a93d629a33d33024416db218b6c5bdbc14135839653abd97f973a2b536b0dda8"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
