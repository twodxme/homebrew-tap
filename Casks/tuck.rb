cask "tuck" do
  version "1.2.3"
  sha256 "f95cd7bcc0d13651387d8a5da2b601b9a436d5c82a80dec9cf66beff8f72da1c"

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
