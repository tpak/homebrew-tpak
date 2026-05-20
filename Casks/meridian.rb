cask "meridian" do
  version "3.0.3"
  sha256 "1322bcb4c5738d6dd4a5a5beb4422a20dd0a22bb36b308bce3352d53bac6c20f"

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