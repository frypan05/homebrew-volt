class Volt < Formula
  desc "Terminal Based Binary for API Testing"
  homepage "https://github.com/frypan05/Volt"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-x86_64-apple-darwin.tar.gz"
      sha256 "c785b56989196aa3476f557d9932fb98d81d3628c3ea55bea923aa1efd55bcf1"
    end
    on_arm do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-aarch64-apple-darwin.tar.gz"
      sha256 "38b491c98521a47c8b6c3a3cb0c76ab2232e0273283a08290d82e0897e086015"
    end
  end

  def install
    bin.install "volt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/volt --version 2>&1", 1)
  end
end
