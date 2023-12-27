# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "greenlight" do
  version "2.0.1"
  sha256 "ce2be509cae08467cd246da2e438ce47bdfedb3d01a6ef9884b9486dcc220f14"

  url "https://github.com/unknownskl/greenlight/releases/download/v#{version}/Greenlight-#{version}-universal.dmg"
  name "Greenlight"
  desc "Open-source client for xCloud and xHome streaming"
  homepage "https://github.com/unknownskl/greenlight"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://github.com/unknownskl/greenlight/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  app "Greenlight.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/greenlight",
    "~/Library/Saved Application State/com.unknownskl.greenlight.savedState",
    "~/Library/Preferences/com.unknownskl.greenlight.plist",
  ]
end