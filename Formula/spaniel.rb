class Spaniel < Formula
  desc "Local OpenTelemetry collector and viewer"
  homepage "https://github.com/zfogg/spaniel"
  version "main"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_arm64.tar.gz"
      sha256 "65a147f18d99b6fb8f65039072f4d1042a8b934b7309b5fd4ff4618af4f25588"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_amd64.tar.gz"
      sha256 "d1bbc68a2efd60048956d52570674537989517e8bfe1b412aa6d819c81601339"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_arm64.tar.gz"
      sha256 "dec411b4f5e4f299b8c7533b1a6f37b410af364b04b17579b937118a41954829"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_amd64.tar.gz"
      sha256 "241caa06c20d62e62732fe3885516594f3478463750e120af2f2d1ca3f10b775"
    end
  end

  def install
    bin.install "spaniel"
  end

  test do
    assert_match "spaniel", shell_output("#{bin}/spaniel --version")
  end
end
