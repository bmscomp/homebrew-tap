class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.16.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.16.0/kates-darwin-arm64.tar.gz"
      sha256 "2c61ac3f7218ba05c45ed22e7c28a8f4fa98d9b8d560bbcc6b60b8f836a201c2"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.16.0/kates-darwin-amd64.tar.gz"
      sha256 "5b88e3378d2457ee661134cde27dabe670982166fb0a20ab20c7de12f26ea9d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.16.0/kates-linux-arm64.tar.gz"
      sha256 "a2d3a8eed9f1161c03e065a489483c679160bba2cdf324609163c3e9fa6c41de"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.16.0/kates-linux-amd64.tar.gz"
      sha256 "dd108588c4d2e907b2dec92b0acef5abb30084cd56f57fd3f56bd9b95f45190a"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
