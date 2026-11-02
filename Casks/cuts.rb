cask "cuts" do
  version "1.7.0"
  sha256 "38e0d21c2b892f27193cd7688b9786692aca02adc9d4d7ef1896820afb4bd81a"

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
