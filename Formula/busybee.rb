class Busybee < Formula
  desc "Queued runner for resource-heavy tasks with a live CPU + queue TUI monitor"
  homepage "https://github.com/githappens/busybee"
  url "https://github.com/githappens/busybee/releases/download/0.1.0/bzb-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "174c2dcec9ecc3e8a534cc778152d8a96f1d95b9b935fbcb8f972a0ff44d224d"
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
