cask "pearai" do
  version "1.8.9"
  sha256 :no_check

  url "https://pearai-app.nyc3.digitaloceanspaces.com/PearAI-latest/darwin-arm64/PearAI-Installer.dmg",
      verified: "pearai-app.nyc3.digitaloceanspaces.com/PearAI-latest/"
  name "PearAI"
  desc "Open Source AI Code Editor"
  homepage "https://trypear.ai/"

  livecheck do
    url "https://github.com/trypear/pearai-app"
    strategy :github_latest
  end

  auto_updates true

  app "PearAI.app"

  zap trash: [
    "~/.pearai",
    "~/Library/Application Support/PearAI",
  ]
end
