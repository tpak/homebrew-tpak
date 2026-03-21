cask "meridian" do
  version "2.9.0"
  sha256 "347f59afc65651463a6b1798d3a1a6d2f961ebde1c02e0cf7fd38df9bd140d7f"

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
