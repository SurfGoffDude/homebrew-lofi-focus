cask "lofi-focus" do
  version "1.0"
  sha256 "93c832c91e3c71d87d6535075006221ee7c973d85429d1df76100e16e5808076"

  url "https://github.com/SurfGoffDude/LofiFocus/releases/download/v#{version}/LofiFocus-#{version}.zip"
  name "Lofi Focus"
  desc "Lo-fi плеер, таймер Pomodoro и ИИ-диджей"
  homepage "https://github.com/SurfGoffDude/LofiFocus"

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe" # macOS 26

  app "Lofi Focus.app"

  zap trash: [
    "~/Library/Application Support/LofiFocus/liked.json",
    "~/Library/Application Support/LofiFocus/sessions.json",
    "~/Library/Caches/io.github.surfgoffdude.LofiFocus",
    "~/Library/Preferences/io.github.surfgoffdude.LofiFocus.plist",
    "~/Library/Saved Application State/io.github.surfgoffdude.LofiFocus.savedState",
  ]
end
