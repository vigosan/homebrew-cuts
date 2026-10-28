cask "cuts" do
  version "1.5.0"
  sha256 "5be0ad982673c373f5a0f4a0e9c4a065b1690191fc595450ebe5eeafc4775746"

  url "https://github.com/vigosan/cuts-releases/releases/download/v#{version}/Cuts-mac.dmg"
  name "Cuts"
  desc "Cut the best moments of a long video into clips"
  homepage "https://github.com/vigosan/cuts-releases"

  livecheck do
    url "https://github.com/vigosan/cuts-releases"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Cuts.app"

  zap trash: [
    "~/Library/Application Support/Cuts",
    "~/Library/Preferences/com.vigosan.cuts.plist",
    "~/Library/Saved Application State/com.vigosan.cuts.savedState",
  ]
end
