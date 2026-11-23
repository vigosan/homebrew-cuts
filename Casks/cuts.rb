cask "cuts" do
  version "1.9.2"
  sha256 "0c0326db9c453b3e5dbadc0ad610de0b604911d7c3c09d6a6fb0e9eee7e6f61f"

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
