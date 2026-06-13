cask "meridian" do
  version "3.1.2"
  sha256 "56e75282fa505502f02a6e71a05f386c6980599ab2efed599f1db5e8f118a605"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: "~/Library/Preferences/com.tpak.Meridian.plist"
end
