cask "meridian" do
  version "2.16.0"
  sha256 "e2f502ecc53ff46e5ce8cb58390f15350de0115279c579cebdff35c3f480d485"

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