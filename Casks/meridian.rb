cask "meridian" do
  version "4.0.0"
  sha256 "3711fcbb59dbfbc798c1ea9630a1f1d9aaf98bf5c36f7ce22ab0b4baaacc750d"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: "~/Library/Preferences/com.tpak.Meridian.plist"
end