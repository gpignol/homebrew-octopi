cask "octopi" do
  version "0.22.1"
  sha256 "a758ee7e7d18403ca0b1d35db04a664dad44bcaba2b1b7abfbe2407e6f4226cd"

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
