cask "boss" do
  version "9.5.42"
  sha256 "14fc5ea204266c00acd5c307219ef381d82fad91ef6bdb74a35a6b70dab8cec8"

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