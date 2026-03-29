class Volt < Formula
  desc "Terminal Based Binary for API Testing"
  homepage "https://github.com/frypan05/Volt"
  version "1.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-x86_64-apple-darwin.tar.gz"
      sha256 "fcf54e77a82cf81e58624c4b6a61532434cef7c9328ceb8770386444c8697456"
    end
    on_arm do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-aarch64-apple-darwin.tar.gz"
      sha256 "96fa098c3e3171af140418f5a6032e50d01dc1931096fadb8cff8084825fc949"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae0bf4ab7652148a8ea2805da2c588e4ca73a4cec4b3212b790db45c6f2ec01f"
    end
    on_arm do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e3d3c81969ce7bf6ffd631d7d8792efc5d4b04562226ab69fe1164aec7b81e8"
    end
  end

  def install
    bin.install "volt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/volt --version 2>&1", 1)
  end
end
