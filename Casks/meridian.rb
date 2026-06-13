cask "meridian" do
  version "3.1.3"
  sha256 "fdcfd778dec673230a83a4dc019bdf1ae19564cbdb0768b37410e9e8bc4bb6c1"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: "~/Library/Preferences/com.tpak.Meridian.plist"
end