class Spaniel < Formula
  desc "Local OpenTelemetry collector and viewer"
  homepage "https://github.com/zfogg/spaniel"
  version "main"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_arm64.tar.gz"
      sha256 "0ec50f7db0e3a69f9db8e60e81fc70fec4f22c1e0d36a87fbdd5a7f6448472a5"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_darwin_amd64.tar.gz"
      sha256 "fe9712f5eefdc11219570927cf1da647a7ad7efbdc083b8bdab87f734fdb63c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_arm64.tar.gz"
      sha256 "7b6afc0e8f8e71ca59fc6cc715839dbe329de9dcea2bb0065b3b7b84808a01f3"
    end
    on_intel do
      url "https://github.com/zfogg/spaniel/releases/download/vmain/spaniel_main_linux_amd64.tar.gz"
      sha256 "f6b87f32ce99a2c124041311dd957bc76b81b54cff7c46b14c6aeaf063a0264a"
    end
  end

  def install
    bin.install "spaniel"
  end

  test do
    assert_match "spaniel", shell_output("#{bin}/spaniel --version")
  end
end
