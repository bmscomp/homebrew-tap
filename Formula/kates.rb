class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.2.0/kates-darwin-arm64.tar.gz"
      sha256 "2478c1c8cd81ac1ea910abfb4a4b36878ce372a4805d52517d4c8db3f390ed66"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.2.0/kates-darwin-amd64.tar.gz"
      sha256 "9caaa13e7122987dce94be63cd32b97ddcbdc3fc0709554f52470d8a18287568"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.2.0/kates-linux-arm64.tar.gz"
      sha256 "45bb92788f2f612f857f2badbde5bd55ae8005a23ba2a8808d3c34f92af52abb"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.2.0/kates-linux-amd64.tar.gz"
      sha256 "51e4dc0fbd919edaf09a7b50b7b5846e86f6e7fa7d9f24ff262b96d37a0868e2"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
