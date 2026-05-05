class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.4.0/kates-darwin-arm64.tar.gz"
      sha256 "505b68e4d0002f0823edb3544ca5973a39f20e688c04b2fefbb083bca6c205d5"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.4.0/kates-darwin-amd64.tar.gz"
      sha256 "c42d8b2d2bbba82f2dba05efc348f8ec0eceaae43bd4ffec5f35a39531e8eafa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.4.0/kates-linux-arm64.tar.gz"
      sha256 "db4a9b43402180bc88103bd25237985bae1eca550bb27deb00e42f917777b597"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.4.0/kates-linux-amd64.tar.gz"
      sha256 "b54f889b6e9d5658f5a19a2848777a731184dcefde1e2c51214b894e5eef50ac"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
