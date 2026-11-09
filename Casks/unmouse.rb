cask "unmouse" do
  version "0.1.0"
  sha256 "3fc6f85110f9925e62511c9df9f96e50ad7cfdfb20526b8aa9bb281f74759bdc"

  url "https://github.com/marchellll/unmouse/releases/download/v#{version}/Unmouse-#{version}.zip"
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
