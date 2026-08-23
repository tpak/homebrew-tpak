cask "meridian" do
  version "4.1.3"
  sha256 "a69ee7d1ea47e29ef0bf71b330800e609338d223ae06f91d4c5ce9643b28a387"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: "~/Library/Preferences/com.tpak.Meridian.plist"
end