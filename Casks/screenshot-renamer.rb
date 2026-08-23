cask "screenshot-renamer" do
  version "1.16.1"
  sha256 "b561d3d7f6b4a7fcb75b4c9a0a4016bdf5e823426ff610b1ca81f36397ce16a0"

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
