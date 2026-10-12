class Capsled < Formula
  desc "Use the Caps Lock LED as a process activity indicator"
  homepage "https://github.com/Sol-momma/lightsaber"
  url "https://github.com/Sol-momma/lightsaber/releases/download/v0.1.0/capsled-macos-universal.tar.gz"
  sha256 "4ff2ab44913c1f45288081b5bc456b00e998ace44c296c53902cc1d62e1a649c"
  license "MIT"

  # A versioned macOS dependency sets the version floor but is considered
  # satisfied on Linux. The bare dependency rejects Linux explicitly; Homebrew
  # requires the versioned half to be nested to avoid a deprecated combination.
  depends_on :macos
  on_macos do
    depends_on macos: :sonoma
  end

  def install
    # The release already contains one ad-hoc-signed Universal Binary. Installing
    # it directly keeps Swift and Xcode out of the runtime dependency graph and
    # avoids compiling two architecture slices on every user's Mac.
    bin.install "capsled"
  end

  test do
    # Help parsing creates no LED writes, so this verifies both the executable
    # and its private IOKit linkage without changing keyboard hardware state.
    assert_match "Usage:", shell_output("#{bin}/capsled --help")
  end
end
