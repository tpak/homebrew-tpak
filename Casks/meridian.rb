cask "meridian" do
  version "2.18.3"
  sha256 "8d21e8db88c47c397ff8ee819133592792beb55f3270567cc94485e3d38ce594"

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