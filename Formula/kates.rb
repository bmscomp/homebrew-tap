class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.41.1"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.41.1/kates-darwin-arm64.tar.gz"
      sha256 "df294847950fa9c5175e36c7c638ae70a8dcc8ae0559a05921fa706ac83e009c"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.41.1/kates-darwin-amd64.tar.gz"
      sha256 "3f3af375c337e78cf6943ee7e07f641f55fa53136eba0067746083a9d0b95157"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.41.1/kates-linux-arm64.tar.gz"
      sha256 "26a81be265c4f36fa7cbdfd6e201519ee52ae91605249accc44735e8b53243cb"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.41.1/kates-linux-amd64.tar.gz"
      sha256 "b73b57503274eaa5fc93afacfc813f4de577c3d71234a2d87ae00f64f9903c92"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
