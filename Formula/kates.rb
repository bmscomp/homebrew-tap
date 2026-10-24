class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.29.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.29.2/kates-darwin-arm64.tar.gz"
      sha256 "a05edda1d23099a2fabb98b6c417520b444a64c944bc620b59a14c743ef1d116"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.29.2/kates-darwin-amd64.tar.gz"
      sha256 "341b5d1ebf4029a74eaa062a661e835aad44776cb7cf2ad4cac84970888f04c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.29.2/kates-linux-arm64.tar.gz"
      sha256 "cc9d4ef074050336fea739b7e2b2ac50acec9e72b823711d48af0f77c16fbd76"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.29.2/kates-linux-amd64.tar.gz"
      sha256 "67435b7acfa5037ebf8686922440c37d86f0a064214ec1274195b6d44d3c5588"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
