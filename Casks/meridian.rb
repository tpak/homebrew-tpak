cask "meridian" do
  version "2.17.4"
  sha256 "b05f45ca7af80d4cff3bf8fa4361eecd20b4c3701c3c87bab51ed927c8369e00"

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