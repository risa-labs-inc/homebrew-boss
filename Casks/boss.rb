cask "boss" do
  version "8.13.18"
  sha256 "fb96406a0cc635dfa23b777e9a533c93a33ca4f133b57843c9baf9bbaac45907"

  url "https://github.com/risa-labs-inc/BOSS-Releases/releases/download/v#{version}/BOSS-#{version}-Universal.dmg",
      verified: "github.com/risa-labs-inc/BOSS-Releases/"
  name "BOSS"
  desc "Business OS plus Simulations - AI-powered workspace for complex business operations"
  homepage "https://github.com/risa-labs-inc/BOSS-Releases"

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