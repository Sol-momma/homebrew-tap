# Sol-momma Homebrew Tap

Homebrew formulae for projects maintained by [Sol-momma](https://github.com/Sol-momma).

## capsled

Install [capsled](https://github.com/Sol-momma/capsled) with one command:

```sh
brew install Sol-momma/tap/capsled
```

The formula downloads the checksum-pinned Universal Binary, so it does not
install Swift or Xcode as a dependency.

Update:

```sh
brew upgrade Sol-momma/tap/capsled
```

Uninstall and restore normal LED control:

```sh
capsled auto
brew uninstall Sol-momma/tap/capsled
```

Homebrew keeps Cellar metadata, a download cache, and a small Git clone of this
tap. If minimum disk usage matters more than Homebrew-managed updates, use the
checksum-verifying installer documented in the capsled repository instead; it
leaves only the approximately 289 KiB executable.
