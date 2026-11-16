cask "meridian" do
  version "4.2.3"
  sha256 "8e1b082c9eedaae8f830d6406d4412d2795e79117b42dfcf67d9a17ff2725516"

  url "https://github.com/tpak/Meridian/releases/download/v#{version}/Meridian.app.zip"
  name "Meridian"
  desc "Menu bar world clock app"
  homepage "https://github.com/tpak/Meridian"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Meridian.app"

  zap trash: [
    "~/Library/Application Scripts/com.tpak.Meridian",
    "~/Library/Caches/com.tpak.Meridian",
    "~/Library/Containers/com.tpak.Meridian",
    "~/Library/HTTPStorages/com.tpak.Meridian",
  ]
end
