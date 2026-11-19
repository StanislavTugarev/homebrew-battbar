# homebrew-battbar

Homebrew tap for [battbar](https://github.com/StanislavTugarev/battbar) — menu bar
battery indicators for wireless mice, keyboards and headsets on macOS.

```
brew tap StanislavTugarev/battbar
brew install --cask StanislavTugarev/battbar/battbar
```

Homebrew's [Tap Trust](https://docs.brew.sh/Tap-Trust) (on by default since Homebrew 6)
does not load casks from third-party taps until they are trusted. Installing by the
fully qualified name trusts only this cask — not the whole tap — and `brew upgrade`
keeps working. Please use the full name rather than `brew install --cask battbar`, and
do not trust the whole tap; if you need trust without installing, use
`brew trust --cask StanislavTugarev/battbar/battbar`.

`Casks/battbar.rb` is updated automatically by the battbar release workflow (over an
SSH deploy key with write access to this repository only). Please open issues in the
[battbar repository](https://github.com/StanislavTugarev/battbar/issues).

battbar is not affiliated with or endorsed by Logitech or SteelSeries.
