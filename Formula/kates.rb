class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.39.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.39.0/kates-darwin-arm64.tar.gz"
      sha256 "77c2f660295a5cb1f70e6e9ced1fc19c975cb3cd1bd68b270d80c80f97dc283a"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.39.0/kates-darwin-amd64.tar.gz"
      sha256 "62912d54507df10dd32bc41d1ed4c11cae4da04f378bfb7bc0c2c1b01aff92f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.39.0/kates-linux-arm64.tar.gz"
      sha256 "91c7222d4b37e3b5536eea5acf503d8ea7550c77573cf2fac12ad9c842223030"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.39.0/kates-linux-amd64.tar.gz"
      sha256 "7c06e4748dafb49863a6f628404bc2318359d274ac121372e271972b62a65562"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
