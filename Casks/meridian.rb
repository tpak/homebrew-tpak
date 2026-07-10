cask "meridian" do
  version "4.1.1"
  sha256 "8a86fb4d41d0c162255984e56fa4e7b6d7d34e779f58a2761145c87d830a208d"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: "~/Library/Preferences/com.tpak.Meridian.plist"
end