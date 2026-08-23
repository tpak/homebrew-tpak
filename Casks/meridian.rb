cask "meridian" do
  version "4.2.0"
  sha256 "0eed36f9b97512734ffed69e163196db06d025bb0206558fe8f6b3a3457bb5e6"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: "~/Library/Preferences/com.tpak.Meridian.plist"
end