cask "openfish" do
  version "0.1.10"
  sha256 "1e3199db370ca029b00362009e166c63687a67e591f4508234609d06af517f8d"

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
