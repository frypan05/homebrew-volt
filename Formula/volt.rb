class Volt < Formula
  desc "Terminal Based Binary for API Testing"
  homepage "https://github.com/frypan05/Volt"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-x86_64-apple-darwin.tar.gz"
      sha256 "0bbb3ca3db69837be5a26b770cfbb5d5b4fe321ac70c875742e159f0ee4570f9"
    end
    on_arm do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-aarch64-apple-darwin.tar.gz"
      sha256 "fc92202d2e21379ada21effea9159c6f1f85241870f654158e95587e03193326"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8da305b01d53ae3a216b88fad80f4a48676e8919f94e4c2a95f6b7a51a4658e"
    end
    on_arm do
      url "https://github.com/frypan05/Volt/releases/download/v#{version}/volt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24a5f0e48b12ed43eb78c47e3f427b724b95f1211c949099d329d4b5dc3b3f36"
    end
  end

  def install
    bin.install "volt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/volt --version 2>&1", 1)
  end
end
