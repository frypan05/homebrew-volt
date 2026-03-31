class Volt < Formula
  desc "Terminal Based Binary for API Testing"
  homepage "https://github.com/frypan05/Volt"
  version "1.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-x86_64-apple-darwin.tar.gz"
      sha256 "a7a9d8dc10e924ed2acd751a7cda3e3e101a32f88407e0a8d55c9d7b2d5f78bf"
    end
    on_arm do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-aarch64-apple-darwin.tar.gz"
      sha256 "3b548fca1e209273c2c8ba1798e397f44ca2229b3105a8a6844cbf2c6de6dce0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0bbb3ca3db69837be5a26b770cfbb5d5b4fe321ac70c875742e159f0ee4570f9"
    end
    on_arm do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "578250f3050c3237f8058494e0711892cec8eb8f1edd5e952bbe18cd94e4e598"
    end
  end

  def install
    bin.install "volt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/volt --version 2>&1", 1)
  end
end
