class Spaniel < Formula
  desc "Local OpenTelemetry collector and viewer"
  homepage "https://github.com/zfogg/spaniel"
  version "main"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_arm64.tar.gz"
      sha256 "86c528f402f04b525cd03d751fef8de4a53c16be80c33062cdb3a9e8717da688"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_amd64.tar.gz"
      sha256 "ae8a769ceb46c01d5f73302684bef95637b2aa82fc19a74c5f0d6456b9cc08ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_arm64.tar.gz"
      sha256 "bfb05a80ee5309924b313fdb3a4ae36e24749095d3c3e84c9b55e72781fce9f8"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_amd64.tar.gz"
      sha256 "94f3a67ac4e3c291f3def6a120063071077d936676246021d15793df498c77a6"
    end
  end

  def install
    bin.install "spaniel"
  end

  test do
    assert_match "spaniel", shell_output("#{bin}/spaniel --version")
  end
end
