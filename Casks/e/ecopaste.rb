cask "ecopaste" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "71f45412cb73e628093e06edbd50293cd5a9981b9bd98f07bed20634782246da",
         intel: "725081365222f8aa3cebc71e3fa89ffa09a592f03c47dcf7aab35926298dd8ec"

  mirror = "https://mirror.ghproxy.com/"
  origin = "https://github.com/EcoPasteHub/EcoPaste/releases/latest/download/EcoPaste_#{arch}.app.tar.gz"

  url "#{mirror}#{origin}",
      verified: "mirror.ghproxy.com/"
  name "EcoPaste"
  desc "Open source clipboard management tools"
  homepage "https://github.com/EcoPasteHub/EcoPaste"

  livecheck do
    url origin.to_s
    strategy :github_latest
  end

  auto_updates true

  app "EcoPaste.app"

  zap trash: [
    "/var/folders/pl/88zfv10n4_v7fmnchp0x97980000gn/C/com.ayangweb.EcoPaste",
    "/var/folders/pl/88zfv10n4_v7fmnchp0x97980000gn/T/com.ayangweb.EcoPaste",
    "~/Library/Application Support/com.ayangweb.EcoPaste",
    "~/Library/Caches/com.ayangweb.EcoPaste",
    "~/Library/Logs/com.ayangweb.EcoPaste",
    "~/Library/Preferences/com.ayangweb.EcoPaste.plist",
    "~/Library/WebKit/com.ayangweb.EcoPaste",
  ]
end
