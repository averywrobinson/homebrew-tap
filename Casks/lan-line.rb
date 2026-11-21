cask "lan-line" do
  version "0.9.0-beta.2"
  sha256 "0bcb7588ec44826d29f2ff2f1a234870fe91922ffb5206ef45296376311edbfc"

  url "https://github.com/averywrobinson/lan-line/releases/download/v#{version}/Lan-Line-#{version}-mac.dmg"
  name "Lan-Line"
  desc "Pinned window for dropping files, screenshots and text between computers on a LAN"
  homepage "https://lan-line.averywrobinson.com/"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

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
