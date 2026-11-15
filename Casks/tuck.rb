cask "tuck" do
  version "1.2.1"
  sha256 "4522acbf738ec618ee72efc7ecafef9a4e7e5135e37e85f405b24a0e44cd2816"

  url "https://github.com/twodxme/macos-tuck/releases/download/v#{version}/Tuck.zip"
  name "Tuck"
  desc "Hide rarely used menu bar icons behind a divider"
  homepage "https://github.com/twodxme/macos-tuck"

  depends_on macos: :ventura

  app "Tuck.app"

  uninstall quit: "com.twodxme.tuck"

  zap trash: "~/Library/Preferences/com.twodxme.tuck.plist"

  caveats <<~EOS
    Tuck is ad-hoc signed, not notarized, so macOS blocks its first launch.
    Open it once, then click Open Anyway in
    System Settings → Privacy & Security.

    Hold ⌘ and drag menu bar icons to the left of Tuck's divider to tuck them.
    Right-click the arrow for Tuck's menu and Settings.
  EOS
end
