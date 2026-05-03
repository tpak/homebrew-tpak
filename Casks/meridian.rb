cask "meridian" do
  version "2.21.3"
  sha256 "22a1a50bfafb078e6363d770f2e0e9cb8fb9e4930ade672d1ad0cf15613fbcb7"

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