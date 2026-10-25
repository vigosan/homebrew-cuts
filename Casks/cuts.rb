cask "cuts" do
  version "1.1.0"
  sha256 "18b8c01e12bc11e017fa4e5783b84df74e16f5270d84b0096afb0954d13ce58f"

  url "https://github.com/vigosan/cuts-releases/releases/download/v#{version}/Cuts-mac.dmg"
  name "Cuts"
  desc "Cut the best moments of a long video into clips"
  homepage "https://github.com/vigosan/cuts-releases"

  livecheck do
    url "https://github.com/vigosan/cuts-releases"
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Cuts.app"

  zap trash: [
    "~/Library/Application Support/Cuts",
    "~/Library/Preferences/com.vigosan.cuts.plist",
    "~/Library/Saved Application State/com.vigosan.cuts.savedState",
  ]
end
