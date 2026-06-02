cask "boss" do
  version "9.2.5"
  sha256 "33a936e86ce607a56b93eaa8a65c5aa387d304d518481578e05738c4a8ea1d3c"

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