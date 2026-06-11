class Caddyview < Formula
  desc "TUI SSH monitor for Caddy web server logs"
  homepage "https://github.com/janvete/caddyview"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janvete/caddyview/releases/download/v0.2.1/caddyview-v0.2.1-darwin-arm64.tar.gz"
      sha256 "1076bba0c73e0deb9b02f7a06d9db805741743e2d4fe53c80dce18aff22ee9be"
    else
      url "https://github.com/janvete/caddyview/releases/download/v0.2.1/caddyview-v0.2.1-darwin-amd64.tar.gz"
      sha256 "45bf2f93e2be52306bc5ee437d7b2125ceda9a15ec3cd146e71fd59546a0e69a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/janvete/caddyview/releases/download/v0.2.1/caddyview-v0.2.1-linux-amd64.tar.gz"
      sha256 "7dfd39f2ded9c67dc49f90b7ac0cac5e430b65408dfea3ce3e17b80e94132184"
    end
  end

  def install
    bin.install "caddyview"
  end

  test do
    assert_match "TUI monitor", shell_output("#{bin}/caddyview --help")
  end
end
