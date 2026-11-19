# Updated automatically by the release workflow of StanislavTugarev/battbar.
cask "battbar" do
  version "0.1.0"
  sha256 :no_check # set to the release checksum by the battbar release workflow

  url "https://github.com/StanislavTugarev/battbar/releases/download/v#{version}/battbar-#{version}.zip"
  name "battbar"
  desc "Menu bar battery indicators for wireless mice, keyboards and headsets"
  homepage "https://github.com/StanislavTugarev/battbar"

  depends_on macos: ">= :ventura"

  app "battbar.app"
  binary "#{appdir}/battbar.app/Contents/MacOS/battbar"

  uninstall quit: "io.github.battbar"

  zap trash: "~/.config/battbar"

  caveats <<~EOS
    battbar is signed with its own certificate but not notarized by Apple.
    The first start is blocked once ("battbar" Not Opened): click Done, then open
    System Settings > Privacy & Security, click "Open Anyway" next to battbar,
    confirm, and open battbar again.
  EOS
end
