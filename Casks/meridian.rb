cask "meridian" do
  version "2.17.6"
  sha256 "a52b0a4156e508594f68cef1e37be33a7dc706b5bfe1aa5596dbef3ee8cdbf80"

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