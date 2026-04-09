cask "claudeswitcher" do
  version "1.0.0"
  sha256 "cc0d9e91e4c4e913e9ca6fc0bc1209d46177b05e3c19af41aa964109ea6a36be"

  url "https://github.com/cnrture/ClaudeSwitcher/releases/download/v#{version}/ClaudeSwitcher.zip"
  name "ClaudeSwitcher"
  desc "Menu bar app to manage and switch between multiple Claude accounts"
  homepage "https://github.com/cnrture/ClaudeSwitcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "ClaudeSwitcher.app"

  zap trash: [
    "~/.claude-swap-backup",
    "~/Library/Application Support/com.candroid.ClaudeSwitcher",
    "~/Library/Caches/com.candroid.ClaudeSwitcher",
    "~/Library/Preferences/com.candroid.ClaudeSwitcher.plist",
    "~/Library/Saved Application State/com.candroid.ClaudeSwitcher.savedState",
  ]
end
