cask "meridian" do
  version "2.19.1"
  sha256 "654c21747ceb442c8e9c0a9b904d3ddf6db1f37221fb85e7cd39ec698ed08eb2"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "macOS menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Meridian.app"

  zap trash: [
    "~/Library/Preferences/com.tpak.Meridian.plist",
  ]
end