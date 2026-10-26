cask "octopi" do
  version "0.21.0"
  sha256 "c96800dc21f594fda773818ab176d7be773c86651caf5da50346337c1aa7aa98"

  url "https://github.com/gpignol/octopi-releases/releases/download/v#{version}/Octopi-#{version}.dmg",
      verified: "github.com/gpignol/octopi-releases/"
  name "Octopi"
  desc "Local-first research agent: plain-English tasks to finished spreadsheets"
  homepage "https://useoctopi.com/"

  # New versions are detected from the app's own auto-update manifest.
  livecheck do
    url "https://raw.githubusercontent.com/gpignol/octopi-releases/main/appcast.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true          # the app updates itself in place via its appcast
  depends_on macos: ">= :monterey"

  app "Octopi.app"

  zap trash: [
    "~/Library/Application Support/PrivateResearchAgent",
    "~/Library/Preferences/com.local.private-research-agent.plist",
    "~/Library/Saved Application State/com.local.private-research-agent.savedState",
  ]
end
