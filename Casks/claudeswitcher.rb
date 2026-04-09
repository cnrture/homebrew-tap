cask "claudeswitcher" do
  version "1.0.1"
  sha256 "0b7b8fbe43fdf30589902cfd1f6a6af07a9be691c2443866e20e54fe90d80ee4"

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
