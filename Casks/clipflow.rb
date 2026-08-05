cask "clipflow" do
  version "1.0.0"
  sha256 "1edbed09e7362a9c08d50448ce1bda793091fbe08e580a182afc08fa27209ddb"

  url "https://github.com/harshpritam/ClipFlow/releases/download/v#{version}/ClipFlow.app.zip",
      verified: "github.com/harshpritam/ClipFlow/"
  name "ClipFlow"
  desc "Windows-style clipboard manager for macOS with auto-paste"
  homepage "https://github.com/harshpritam/ClipFlow"

  depends_on macos: ">= :sonoma"

  app "ClipFlow.app"

  zap trash: [
    "~/Library/Application Support/ClipFlow",
    "~/Library/Preferences/com.clipflow.app.plist",
  ]
end
