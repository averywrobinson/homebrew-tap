cask "lan-line" do
  version "0.9.0-beta.11"
  sha256 "278ca60280139488665b51a30a93fdf486212a9ce75934570888452050f1bd7f"

  url "https://github.com/averywrobinson/lan-line/releases/download/v#{version}/Lan-Line-#{version}-mac.dmg"
  name "Lan-Line"
  desc "Pinned window to drop files, screenshots and text between computers on a LAN"
  homepage "https://averywrobinson.com/lan-line/"

  depends_on macos: :ventura

  app "Lan-Line.app"

  zap trash: [
    "~/Library/Application Support/Lan-Line",
    "~/Library/Preferences/com.avery.lan-line.plist",
  ]
end
