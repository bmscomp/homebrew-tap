class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.2.1/kates-darwin-arm64.tar.gz"
      sha256 "224b4aecae942c12eb357ee94945711be0a36a2a3eb449a2ba58e0f1dfb9389c"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.2.1/kates-darwin-amd64.tar.gz"
      sha256 "0523d1f4c6e677f39bfa5c9c503c7647a070fa590c101a1402d774fb3f22413d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.2.1/kates-linux-arm64.tar.gz"
      sha256 "0c7468c631c63feced509fcc3e952152e91ebfb7bf15a335118be2343fb75520"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.2.1/kates-linux-amd64.tar.gz"
      sha256 "203a1fe16b2b4f5ed07ae474fcd22a9786cfba2ac307d2c9c1491e8fb999cc31"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
