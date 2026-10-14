class Bnb < Formula
  desc "Fast, developer-first shell with native secret vault and job control"
  homepage "https://github.com/EatSleepCode-Repeat/bnb"
  url "https://static.crates.io/crates/bnb-shell/bnb-shell-0.5.3.crate"
  sha256 "2275758dea742ae44321c14bea5e5b2ed2447683f794060c696e4b815a8cd74e"
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
