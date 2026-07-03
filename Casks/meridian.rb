cask "meridian" do
  version "4.1.0"
  sha256 "16ca0b46c3fb4935d1250d061ffa3054435f8bf5ecc47c95e1cc29ef0066bfdd"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: "~/Library/Preferences/com.tpak.Meridian.plist"
end