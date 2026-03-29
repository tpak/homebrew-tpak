cask "meridian" do
  version "2.15.0"
  sha256 "3ef17592e80ae1b66d7d1c170b804aaf4d5cbae79a7aab4af9f8c875250abfb4"

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