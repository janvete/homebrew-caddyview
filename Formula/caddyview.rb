class Caddyview < Formula
  desc "TUI SSH monitor for Caddy web server logs"
  homepage "https://github.com/janvete/caddyview"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janvete/caddyview/releases/download/v0.2.0/caddyview-v0.2.0-darwin-arm64.tar.gz"
      sha256 "b83d6564b174ff249daf9545ea1c8741e87be17ad44c94e0770f8104f75086b1"
    else
      url "https://github.com/janvete/caddyview/releases/download/v0.2.0/caddyview-v0.2.0-darwin-amd64.tar.gz"
      sha256 "ea3643e28f585c27a63b923d83efccd4d1a5c1f34ce988a179cebc7d20ec3555"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/janvete/caddyview/releases/download/v0.2.0/caddyview-v0.2.0-linux-amd64.tar.gz"
      sha256 "df3332713e596a8a79f6cc4a9274aed65c2a2e6ce94654e0b367e42a8946e2aa"
    end
  end

  def install
    bin.install "caddyview"
  end

  test do
    assert_match "TUI monitor", shell_output("#{bin}/caddyview --help")
  end
end
