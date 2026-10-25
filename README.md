# Sol-momma Homebrew Tap

Sol-momma のツールを Homebrew で入れるための tap です。

Homebrew formulae for projects maintained by [Sol-momma](https://github.com/Sol-momma).

## Formulae

| Formula | Description | Source |
| --- | --- | --- |
| `capsled` | Use the physical Caps Lock LED as a macOS process-running indicator | [Sol-momma/lightsaber](https://github.com/Sol-momma/lightsaber) |

## capsled

Install [capsled](https://github.com/Sol-momma/lightsaber) with one command:

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

## How it works

Each file in [Formula/](Formula/) is a Ruby formula. It points to a release
asset of the source repository and pins its SHA-256 checksum, so `brew` refuses
a download that does not match.

## License

[MIT](LICENSE)
