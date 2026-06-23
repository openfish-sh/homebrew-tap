cask "openfish" do
  version "0.1.0"
  sha256 "8f7355bcfe7fb439aa2e8cc9ad1e5b571de0fd0627fb3d8487d74ae6016a9fef"

  url "https://github.com/openfish-sh/openfish/releases/download/v#{version}/OpenFish.dmg"
  name "OpenFish"
  desc "Bring-your-own-key macOS menu-bar writing assistant"
  homepage "https://github.com/openfish-sh/openfish"

  app "OpenFish.app"

  caveats <<~EOS
    OpenFish is self-signed, not notarized, so the first launch needs a manual OK:
      - macOS 14 and earlier: right-click OpenFish in Applications, then Open, then Open.
      - macOS 15+: try to open it, then System Settings > Privacy & Security > "Open Anyway".
    After that, grant Accessibility when asked and paste your own API key in Settings.
  EOS

  zap trash: [
    "~/Library/Application Support/Koifish",
    "~/Library/Preferences/sh.koifish.Koifish.plist",
  ]
end
