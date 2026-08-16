cask "screenshot-renamer" do
  version "1.16.0"
  sha256 "065af0ead6bb09efd6eb3c1a0a4811a220cac7746095814b9bfb3f0cc6fec3d5"

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
