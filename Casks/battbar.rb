# Homebrew cask for battbar; rendered by scripts/update-cask.sh into the tap repository
# StanislavTugarev/homebrew-battbar as Casks/battbar.rb.
cask "battbar" do
  version "0.3.0"
  sha256 "fc734fd4c92b36a6c3300c3de89c140b763109ce6e9582723dde313902394e56"

  url "https://github.com/StanislavTugarev/battbar/releases/download/v#{version}/battbar-#{version}.zip"
  name "battbar"
  desc "Menu bar battery indicators for wireless mice, keyboards and headsets"
  homepage "https://github.com/StanislavTugarev/battbar"

  depends_on macos: :ventura

  app "battbar.app"
  binary "#{appdir}/battbar.app/Contents/MacOS/battbar"

  # Quit the app and remove its "Open at Login" item (registered with SMAppService;
  # System Events lists it by name). The app is not executed during uninstall.
  # On `brew upgrade` Homebrew also runs `quit` (unless --no-quit) and reopens the app
  # after replacing the bundle; `login_item` is skipped on upgrade, so the item stays.
  uninstall quit:       "io.github.battbar",
            login_item: "battbar"

  zap trash: [
    "~/.config/battbar",
    "~/Library/Preferences/io.github.battbar.plist",
  ]

  caveats <<~EOS
    battbar is signed with its own certificate but not notarized by Apple.
    The first start is blocked once ("battbar" Not Opened): click Done, then open
    System Settings > Privacy & Security, click "Open Anyway" next to battbar,
    confirm, and open battbar again.

    Tap Trust: installing as StanislavTugarev/battbar/battbar trusted only this cask,
    not the whole tap; `brew upgrade` keeps working. To trust it without installing:
      brew trust --cask StanislavTugarev/battbar/battbar
  EOS
end
