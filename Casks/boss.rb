cask "boss" do
  version "9.5.34"
  sha256 "b7a80e8935808f3425d1b2756c5ed6b641223d6202287f78c43c96369a3a24d5"

  url "https://github.com/risa-labs-inc/BossConsole-Releases/releases/download/v#{version}/BOSS-#{version}-Universal.dmg"
  name "BOSS"
  desc "Business OS plus Simulations - AI-powered workspace for complex business operations"
  homepage "https://github.com/risa-labs-inc/BossConsole-Releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "BOSS.app"
  binary "#{appdir}/BOSS.app/Contents/Resources/boss"

  zap trash: [
    "~/Library/Application Support/BOSS",
    "~/Library/Caches/ai.rever.boss",
    "~/Library/Preferences/ai.rever.boss.plist",
    "~/Library/Saved Application State/ai.rever.boss.savedState",
  ]
end