class Bnb < Formula
  desc "Fast, developer-first shell with native secret vault and job control"
  homepage "https://github.com/EatSleepCode-Repeat/bnb"
  url "https://static.crates.io/crates/bnb-shell/bnb-shell-0.5.4.crate"
  sha256 "5ff45608ed6c43ffc9be8736862d3548de0ff2d25cdb75d8188a29036913f4b3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Verify that the binary runs and responds to version inquiries
    assert_match "bnb", shell_output("#{bin}/bnb --version")
  end
end
