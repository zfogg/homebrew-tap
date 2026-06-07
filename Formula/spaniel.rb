class Spaniel < Formula
  desc "Local OpenTelemetry collector and viewer"
  homepage "https://github.com/zfogg/spaniel"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/v0.2.2/spaniel_0.2.2_darwin_arm64.tar.gz"
      sha256 "cbca209107131d84b2ee30ec3c4d52343e80fb2b84c03be4aa97041636d1a80b"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/v0.2.2/spaniel_0.2.2_darwin_amd64.tar.gz"
      sha256 "3a1ed53404897a95f1023ecd379ff52256ee865740badd2475844a76135244dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/v0.2.2/spaniel_0.2.2_linux_arm64.tar.gz"
      sha256 "ff08d89a8a2115aed23e1bc61500a675d937c70738524330061ddbe95761f3f6"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/v0.2.2/spaniel_0.2.2_linux_amd64.tar.gz"
      sha256 "fc00dd1e034030c5c692a076c6a77b27b497bd585344d5ee8b6857fb4cae4128"
    end
  end

  def install
    bin.install "spaniel"
  end

  test do
    assert_match "spaniel", shell_output("#{bin}/spaniel --version")
  end
end
