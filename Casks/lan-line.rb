cask "lan-line" do
  version "0.9.0-beta.9"
  sha256 "7f8f81ea79c15487eedd27d1e4a8673b6c18e5054fdc9f3f9feec5a44888bb12"

  url "https://github.com/averywrobinson/lan-line/releases/download/v#{version}/Lan-Line-#{version}-mac.dmg"
  name "Lan-Line"
  desc "Pinned window for dropping files, screenshots and text between computers on a LAN"
  homepage "https://averywrobinson.com/lan-line/"

  depends_on macos: :ventura

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
