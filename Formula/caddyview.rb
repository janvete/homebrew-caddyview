class Caddyview < Formula
  desc "TUI SSH monitor for Caddy web server logs"
  homepage "https://github.com/janvete/caddyview"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janvete/caddyview/releases/download/v0.3.0/caddyview-v0.3.0-darwin-arm64.tar.gz"
      sha256 "ad93f981ce580afec140ad92eff8add9a3d9a7cdc1ec5e9e028a8de83e7ed47e"
    else
      url "https://github.com/janvete/caddyview/releases/download/v0.3.0/caddyview-v0.3.0-darwin-amd64.tar.gz"
      sha256 "4b3aacafdd91ab2298b0e40c3ee6bf6e9fc108f109334a359dec753f9daad82e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/janvete/caddyview/releases/download/v0.3.0/caddyview-v0.3.0-linux-amd64.tar.gz"
      sha256 "6a53b0293632f6ea92136878f4e110c4dd563a0d43bd8a8ef40fd0de133397d3"
    end
  end

  def install
    bin.install "caddyview"
  end

  test do
    assert_match "TUI monitor", shell_output("#{bin}/caddyview --help")
  end
end
