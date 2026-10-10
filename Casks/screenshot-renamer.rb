cask "screenshot-renamer" do
  version "1.17.0"
  sha256 "3b7d8962604b3bdaf387cd363eddf9c2f301d1302073a0712d9ccf912d96e147"

  url "https://github.com/tpak/ScreenshotRenamer/releases/download/v#{version}/ScreenshotRenamer.zip"
  name "Screenshot Renamer"
  desc "macOS menu bar app that renames screenshots from 12h to 24h format"
  homepage "https://tpak.github.io/ScreenshotRenamer/"

  auto_updates true
  depends_on macos: :monterey

  app "ScreenshotRenamer.app"

  zap trash: [
    "~/Library/Logs/ScreenshotRenamer",
    "~/Library/Preferences/com.tirpak.screenshot-renamer.plist",
  ]
end
