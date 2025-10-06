cask "media-downloader" do
  version "5.4.3"
  sha256 "2934113466c46c8681de6f177ef758a79230c7a0371caf50e983a8e056d6489f"

  url "https://github.com/mhogomchungu/media-downloader/releases/download/#{version}/MediaDownloaderQt6-#{version}.dmg"
  name "Media Downloader"
  desc "Qt-based GUI to CLI-based tools that deal with downloading online media"
  homepage "https://github.com/mhogomchungu/media-downloader"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MediaDownloader.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/org.MediaDownloader.gui",
    "~Library/Application Support/media-downloader",
  ]
end
