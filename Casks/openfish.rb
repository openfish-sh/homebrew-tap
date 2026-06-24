cask "openfish" do
  version "0.1.3"
  sha256 "2ed5d787036afefb6c05c887c599df2f2a909d658284c3968d25369c37364973"

  url "https://github.com/openfish-sh/openfish/releases/download/v#{version}/Openfish.dmg"
  name "Openfish"
  desc "Bring-your-own-key macOS menu-bar writing assistant"
  homepage "https://github.com/openfish-sh/openfish"

  app "Openfish.app"

  caveats <<~EOS
    Grant Accessibility when prompted (Settings > Permissions), then add your own API
    key in Settings — Claude, OpenAI, Gemini, or any OpenAI-compatible endpoint.
  EOS

  zap trash: [
    "~/Library/Application Support/Koifish",
    "~/Library/Preferences/sh.koifish.Koifish.plist",
  ]
end
