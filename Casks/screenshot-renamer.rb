cask "screenshot-renamer" do
  version "1.15.1"
  sha256 "7659f5567395bde0387f2d19c963ed0a6a15455fd0228272496674f4a5efa3f7"

  url "https://github.com/tpak/ScreenshotRenamer/releases/download/v#{version}/ScreenshotRenamer.zip"
  name "Screenshot Renamer"
  desc "macOS menu bar app that renames screenshots from 12h to 24h format"
  homepage "https://tpak.github.io/ScreenshotRenamer/"

  auto_updates true
  depends_on macos: :big_sur

  app "ScreenshotRenamer.app"

  zap trash: [
    "~/Library/Logs/ScreenshotRenamer",
    "~/Library/Preferences/com.tirpak.screenshot-renamer.plist",
  ]
end
