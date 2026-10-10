cask "screenshot-renamer" do
  version "1.17.1"
  sha256 "24e6fafa48352eaa979c2b52e9f8bf61c89a4e7227e0baa7bdc0886f5f1a4817"

  url "https://github.com/tpak/ScreenshotRenamer/releases/download/v#{version}/ScreenshotRenamer.zip"
  name "Screenshot Renamer"
  desc "macOS menu bar app that renames screenshots from 12h to 24h format"
  homepage "https://tpak.github.io/ScreenshotRenamer/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "ScreenshotRenamer.app"

  zap trash: [
    "~/Library/Logs/ScreenshotRenamer",
    "~/Library/Preferences/com.tirpak.screenshot-renamer.plist",
  ]
end
