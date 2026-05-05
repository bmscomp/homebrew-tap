class Kates < Formula
  desc "CLI for Kafka Advanced Testing & Engineering Suite"
  homepage "https://github.com/bmscomp/kates"
  version "1.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.5.0/kates-darwin-arm64.tar.gz"
      sha256 "1158a18902bf841285b57c2976cb51e24fe7663a5bdeff2d83b71937d454b66a"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.5.0/kates-darwin-amd64.tar.gz"
      sha256 "38765d68713575159876a6d6701bd64975c52abddc5bf0a90aa124a76fa777cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bmscomp/kates/releases/download/v1.5.0/kates-linux-arm64.tar.gz"
      sha256 "7e6e8b39b45997c12410a486da138a233efeee53deac73bcf957fff6aa753031"
    else
      url "https://github.com/bmscomp/kates/releases/download/v1.5.0/kates-linux-amd64.tar.gz"
      sha256 "8ea3abdcaefb3a7ca3ec2b87773431cc0cc17385f6f6d85c268bbdd2f219cb64"
    end
  end

  def install
    bin.install "kates"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kates version")
  end
end
