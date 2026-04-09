cask "claudeswitcher" do
  version "1.0.1"
  sha256 "2310ac6daae12ade720a8d458d67d2fc89e0947b1e894e93bd073a6f8a54ecdd"

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
