cask "openfish" do
  version "0.1.7"
  sha256 "5ea28743bca814df71cbe2e43705fb05836a83d91705f983399cb49f1ef16c62"

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
