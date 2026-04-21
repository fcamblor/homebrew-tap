cask "ai-usages-tracker" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/fcamblor/mac-ai-trackers/releases/download/v#{version}/AI-Usages-Tracker.zip"
  name "AI Usages Tracker"
  desc "Menu bar app tracking AI tool usage (Claude, Codex, etc.) on macOS"
  homepage "https://github.com/fcamblor/mac-ai-trackers"

  app "AI Usages Tracker.app"

  zap trash: [
    "~/Library/Preferences/io.github.fcamblor.ai-usages-tracker.plist",
    "~/Library/Application Support/AI Usages Tracker",
  ]
end
