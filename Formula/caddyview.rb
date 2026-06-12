class Caddyview < Formula
  desc "TUI SSH monitor for Caddy web server logs"
  homepage "https://github.com/janvete/caddyview"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janvete/caddyview/releases/download/v0.6.0/caddyview-v0.6.0-darwin-arm64.tar.gz"
      sha256 "b1adf43946ca9e8c0072437ea2d5d6c5344f5bc7217426f43a4eb2c5038eaf3f"
    else
      url "https://github.com/janvete/caddyview/releases/download/v0.6.0/caddyview-v0.6.0-darwin-amd64.tar.gz"
      sha256 "e845671914d83eaf9e2da17d11c95e1b5f8fb134674b86c489b94747be7b97f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/janvete/caddyview/releases/download/v0.6.0/caddyview-v0.6.0-linux-amd64.tar.gz"
      sha256 "04aac1aa63935c48bc3c6d25285ba3a2d14aa949707ae9f413efa8a896c4928d"
    end
  end

  def install
    bin.install "caddyview"
  end

  test do
    assert_match "TUI monitor", shell_output("#{bin}/caddyview --help")
  end
end
