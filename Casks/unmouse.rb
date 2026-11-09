cask "unmouse" do
  version "0.1.1"
  sha256 "82686e0f4141e3e5516545ce11d37e95f3ad0b940b0b3ac610366e72b863b01f"

  url "https://github.com/marchellll/unmouse/releases/download/v#{version}/Unmouse-#{version}.dmg"
  name "Unmouse"
  desc "Menu-bar app that drives the pointer from the keyboard"
  homepage "https://github.com/marchellll/unmouse"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :golden_gate

  app "Unmouse.app"

  zap trash: [
    "~/Library/Application Support/unmouse",
    "~/Library/Preferences/xyz.marchell.unmouse.plist",
  ]
end
