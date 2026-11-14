cask "tuck" do
  version "1.1.0"
  sha256 "26465c6017fbc22e6a60d45a4daf9ca058fd7eeaadcd2313f9a2e2b76fe11ee7"

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
    Right-click the arrow for Settings.
  EOS
end
