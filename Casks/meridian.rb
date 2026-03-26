cask "meridian" do
  version "2.13.0"
  sha256 "bb42b12a508c62299a8ad5f34b5bcc5a8eccd5caa9e951a0f5137d9d771d5b95"

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