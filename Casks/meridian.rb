cask "meridian" do
  version "2.10.0"
  sha256 "05ef4782e89dfea62363968f1bfa8a6cf47968cdf877ec1ae62bd4f18dc54f3c"

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