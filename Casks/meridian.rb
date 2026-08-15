cask "meridian" do
  version "4.1.2"
  sha256 "56ecb125bee37ed82b48d6e20bb89085f14e59a3e3e342018d48cefc5d89ddfc"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: "~/Library/Preferences/com.tpak.Meridian.plist"
end