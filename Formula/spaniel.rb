class Spaniel < Formula
  desc "Local OpenTelemetry collector and viewer"
  homepage "https://github.com/zfogg/spaniel"
  version "main"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_arm64.tar.gz"
      sha256 "b6027a561c44dd3a52a6c3350270b88b9b31cd59e65c8617a07c87dfff9ade8f"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_amd64.tar.gz"
      sha256 "e0899c68c9e7aea2d9a815da5984331d9ba82943d173c27f30ecce82aca23064"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_arm64.tar.gz"
      sha256 "b76a8da2f6e6168055ad2aba95f864473df7c782927e39e12b35bb050c7f5541"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_amd64.tar.gz"
      sha256 "d0263fcaf51e7044f0840163cfee6caff72c7285cd750d89b4fe041d4d58a227"
    end
  end

  def install
    bin.install "spaniel"
  end

  test do
    assert_match "spaniel", shell_output("#{bin}/spaniel --version")
  end
end
