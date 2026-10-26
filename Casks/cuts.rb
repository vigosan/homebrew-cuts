cask "cuts" do
  version "1.2.0"
  sha256 "17cbb6c6bdee441000876eff4dcb15581a079b788b04f3dac1c19394b4974fd0"

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
