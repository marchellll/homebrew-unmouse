# Homebrew tap for Unmouse

```sh
brew trust marchellll/unmouse
brew install --cask marchellll/unmouse/unmouse
```

The cask installs the asset attached to a [Unmouse release](https://github.com/marchellll/unmouse/releases).

`0.1.0` is `Unmouse-0.1.0.zip`, signed with an Apple Development certificate. Gatekeeper opens that build on the Mac that signed it. Other Macs need a notarized disk image. When that image is published, update `Casks/unmouse.rb`: `version`, `sha256` from `shasum -a 256 Unmouse-<version>.dmg`, and the asset suffix from `.zip` to `.dmg`.
