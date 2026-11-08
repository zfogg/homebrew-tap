class Spaniel < Formula
  desc "Local OpenTelemetry collector and viewer"
  homepage "https://github.com/zfogg/spaniel"
  version "main"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_arm64.tar.gz"
      sha256 "57a3afda1b95333075682ac92f3f2b67e38c403225a28f3ecd255e2c800b007f"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_amd64.tar.gz"
      sha256 "09cb24033c00285b3fea14bae6a9d96367ec6c78625aa1ee52ef28dd8d03c6ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_arm64.tar.gz"
      sha256 "bac4d3b393541f0d20dcf2c4c3b5a2eda46f234f361c725b4f2eac2b7be5fe1d"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_amd64.tar.gz"
      sha256 "86ee56b6ddeed5741c9d0c99fe345aa4e55e82d1062f61bd30bed7fa88b70c14"
    end
  end

  def install
    bin.install "spaniel"
  end

  test do
    assert_match "spaniel", shell_output("#{bin}/spaniel --version")
  end
end
