cask "boss" do
  version "8.17.24"
  sha256 "9ff6e24f41c855a26b47a7f34eec8ebabea0709527594d2ad53d269bc99854ce"

  url "https://github.com/risa-labs-inc/BossConsole-Releases/releases/download/v#{version}/BOSS-#{version}-Universal.dmg",
      verified: "github.com/risa-labs-inc/BossConsole-Releases/"
  name "BOSS"
  desc "Business OS plus Simulations - AI-powered workspace for complex business operations"
  homepage "https://github.com/risa-labs-inc/BossConsole-Releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "BOSS.app"
  binary "#{appdir}/BOSS.app/Contents/Resources/boss"

  zap trash: [
    "~/Library/Application Support/BOSS",
    "~/Library/Caches/ai.rever.boss",
    "~/Library/Preferences/ai.rever.boss.plist",
    "~/Library/Saved Application State/ai.rever.boss.savedState",
  ]
end