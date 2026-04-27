cask "meridian" do
  version "2.19.0"
  sha256 "77de6364f5467f7c5557a94a0b0641350cdad540f3befb4962c8c7469af6587a"

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