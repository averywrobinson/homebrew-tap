cask "lan-line" do
  version "0.9.0-beta.6"
  sha256 "e3f8c4275e97fe1ec0ddd907c3a2b465cde3f4ae0a7a8340cf4e665e080cd173"

  url "https://github.com/averywrobinson/lan-line/releases/download/v#{version}/Lan-Line-#{version}-mac.dmg"
  name "Lan-Line"
  desc "Pinned window for dropping files, screenshots and text between computers on a LAN"
  homepage "https://averywrobinson.com/lan-line/"

  depends_on macos: ">= :ventura"

  app "Lan-Line.app"

  zap trash: [
    "~/Library/Application Support/Lan-Line",
    "~/Library/Preferences/com.avery.lan-line.plist",
  ]

  caveats <<~EOS
    Lan-Line #{version} is a beta and is not notarized yet. If macOS won't open it,
    open System Settings > Privacy & Security and click "Open Anyway", or run:
      xattr -dr com.apple.quarantine "#{appdir}/Lan-Line.app"
  EOS
end
