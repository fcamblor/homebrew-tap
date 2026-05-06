cask "ai-usages-tracker" do
  version "0.4.2"
  sha256 "b6b769ac27cea1e2cfafebf7e2e014f18b50b499ed7fa5b8b4ad5e503db9f40c"

  url "https://github.com/fcamblor/mac-ai-trackers/releases/download/v#{version}/AI-Usages-Tracker.zip"
  name "AI Usages Tracker"
  desc "Menu bar app tracking AI tool usage (Claude, Codex, etc.) on macOS"
  homepage "https://github.com/fcamblor/mac-ai-trackers"

  app "AI Usages Tracker.app"

  # The app is ad-hoc signed but not Apple-notarized (no paid Developer
  # account). macOS Sequoia blocks quarantined ad-hoc binaries by default.
  # Stripping the quarantine attribute after install lets the app launch
  # cleanly — safe because the user explicitly opted in by running `brew install`.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/AI Usages Tracker.app"]
  end

  zap trash: [
    "~/Library/Preferences/io.github.fcamblor.ai-usages-tracker.plist",
    "~/Library/Application Support/AI Usages Tracker",
  ]
end
