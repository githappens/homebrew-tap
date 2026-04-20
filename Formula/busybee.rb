class Busybee < Formula
  desc "Queued runner for resource-heavy tasks with a live CPU + queue TUI monitor"
  homepage "https://github.com/githappens/busybee"
  url "https://github.com/githappens/busybee/releases/download/0.1.0/bzb-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "2185c668a53e55d0c6aca4087f92335594010d8a904197464e3f6b3810a618e9"
  license any_of: ["MIT", "Apache-2.0"]
  version "0.1.0"

  depends_on "pueue"
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "busybee", "bzb"
  end

  test do
    assert_match "bzb 0.1.0", shell_output("#{bin}/busybee --version")
    assert_match "bzb 0.1.0", shell_output("#{bin}/bzb --version")
  end
end
