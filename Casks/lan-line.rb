cask "lan-line" do
  version "0.9.0-beta.5"
  sha256 "3012228cc5f7ec79260f151a1213d4c37d544545d5df3ba66759e7b995c75217"

  url "https://github.com/averywrobinson/lan-line/releases/download/v#{version}/Lan-Line-#{version}-mac.dmg"
  name "Lan-Line"
  desc "Pinned window for dropping files, screenshots and text between computers on a LAN"
  homepage "https://averywrobinson.com/lan-line/"

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
