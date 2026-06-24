cask "openfish" do
  version "0.1.8"
  sha256 "41c6137fe873ad6fbaef1c2c9ae41378b960059e12717ded688a204680952bef"

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
