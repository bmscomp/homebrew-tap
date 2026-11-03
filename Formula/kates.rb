class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.36.0"
  license "Apache-2.0"

  # kates deploy checks the cosign signature of every chart it pulls.
  depends_on "cosign"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.36.0/kates-darwin-arm64.tar.gz"
      sha256 "e4861dd481b302a722e8f0587e5383e89f494b8c43d49bed3aee864dbe2cf08c"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.36.0/kates-darwin-amd64.tar.gz"
      sha256 "d3e5f45f2e7da86843da8cfe27b3864c4e2ddf7b9792623450d7062904b59177"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.36.0/kates-linux-arm64.tar.gz"
      sha256 "2baec1a07fa5cfeebd92eaa085477b9646a09dc99d01ea684891d356474bad15"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.36.0/kates-linux-amd64.tar.gz"
      sha256 "e34856f698c9ea49210873394a3811c509373cbee1eba350b9d5984d0f1f1571"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
