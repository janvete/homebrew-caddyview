class Caddyview < Formula
  desc "TUI SSH monitor for Caddy web server logs"
  homepage "https://github.com/janvete/caddyview"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janvete/caddyview/releases/download/v0.5.0/caddyview-v0.5.0-darwin-arm64.tar.gz"
      sha256 "7a51235e747941fe6a60c118add981c523eba41942b9bbeb9ba7040b6fe6ad0e"
    else
      url "https://github.com/janvete/caddyview/releases/download/v0.5.0/caddyview-v0.5.0-darwin-amd64.tar.gz"
      sha256 "7e84ac9c75f396f31e4b5cc93cee331b3bd91b4bcf021b6e8abacd65a2ffead8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/janvete/caddyview/releases/download/v0.5.0/caddyview-v0.5.0-linux-amd64.tar.gz"
      sha256 "a698aa6769d8a70ab84ca8dd5ac9f021d04e446791f9cffd9ad0c7eb7ee1a0fc"
    end
  end

  def install
    bin.install "caddyview"
  end

  test do
    assert_match "TUI monitor", shell_output("#{bin}/caddyview --help")
  end
end
