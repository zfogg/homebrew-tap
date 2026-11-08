class Spaniel < Formula
  desc "Local OpenTelemetry collector and viewer"
  homepage "https://github.com/zfogg/spaniel"
  version "main"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_arm64.tar.gz"
      sha256 "36d76b04089205ed872ea829fca16fd94acf5af4558656f564ddcfb093ede70b"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_amd64.tar.gz"
      sha256 "ab011ccce3aa12a9b51a92dbe6dba9d95a40d157f7c43f8b1d10aeaa9d33dcd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_arm64.tar.gz"
      sha256 "7e186d5820a279a7c9386c2ce38b0f8d78d406990b4c85059a7aad162038c9cc"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_amd64.tar.gz"
      sha256 "32492c563d72755c055896ec58a996c7ca201dda5778876ebfc19d4d133bddca"
    end
  end

  def install
    bin.install "spaniel"
  end

  test do
    assert_match "spaniel", shell_output("#{bin}/spaniel --version")
  end
end
