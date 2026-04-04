cask "meridian" do
  version "2.15.4"
  sha256 "bd3b6b8fd3de5f77eeb4e3443f06a96872bd0238e903a7d77a722ca4c9473344"

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