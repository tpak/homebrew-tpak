cask "meridian" do
  version "2.12.0"
  sha256 "31b8107c938f1ad16e3d1e2f2b603dd02e697652e30f4445f02cdb6b0d1ceb98"

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