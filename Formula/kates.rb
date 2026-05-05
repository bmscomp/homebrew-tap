class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.3.1/kates-darwin-arm64.tar.gz"
      sha256 "897efe97f495b8ffd470dce586b7ebe2611b5e87017a4c7bae159b066299a253"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.3.1/kates-darwin-amd64.tar.gz"
      sha256 "2e19fe493dce6597f4c97a9a57525b4c10b90eaa374889bdc7499903a151b2a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.3.1/kates-linux-arm64.tar.gz"
      sha256 "f70b7715be7166512f050d41e797ab0bc90e2d757aff03db5193bcf0242567bf"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.3.1/kates-linux-amd64.tar.gz"
      sha256 "d59a0dc4da6c73268ca220d28e21afc2203220c83869e49f85dbee60478753fa"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
