cask "meridian" do
  version "4.2.1"
  sha256 "ce5631e755605bf1b6aae4aaa0110a1a7b1e879c3c5bacf3e83f38e2d9848933"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: "~/Library/Preferences/com.tpak.Meridian.plist"
end