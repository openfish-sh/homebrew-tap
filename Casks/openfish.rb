cask "openfish" do
  version "0.1.1"
  sha256 "fdcf0499a1283f484ae8a7415272adbd4c0ba0d9141ac980e5fd31c907e721c7"

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
