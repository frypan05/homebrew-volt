class Volt < Formula
  desc "Terminal Based Binary for API Testing"
  homepage "https://github.com/frypan05/Volt"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-x86_64-apple-darwin.tar.gz"
      sha256 "8a1a8af98d2be45780df66a1ba80680da96e352ae98c862eec842138f10af61c"
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
