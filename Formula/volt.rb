class Volt < Formula
  desc "Terminal Based Binary for API Testing"
  homepage "https://github.com/frypan05/Volt"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-x86_64-apple-darwin.tar.gz"
      sha256 "e91dc06254c1907ce35b61281fea2ef24e8119306e6be6c74a023da305acd685"
    end
    on_arm do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-aarch64-apple-darwin.tar.gz"
      sha256 "38b491c98521a47c8b6c3a3cb0c76ab2232e0273283a08290d82e0897e086015"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PASTE_LINUX_X86_SHA256_HERE"
    end
    on_arm do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PASTE_LINUX_ARM_SHA256_HERE"
    end
  end

  def install
    bin.install "volt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/volt --version 2>&1", 1)
  end
end
