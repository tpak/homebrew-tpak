cask "meridian" do
  version "4.2.2"
  sha256 "b1454e7c5c9f14ff4c68fade1bc7e65ad897bf433d869d9e6473b890cf38150e"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: "~/Library/Preferences/com.tpak.Meridian.plist"
end