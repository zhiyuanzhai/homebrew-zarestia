# AUTO-GENERATED FILE. DO NOT EDIT!
cask "rclone-manager@0.2.8" do
  version "0.2.8"
  on_arm do
    url "https://github.com/Zarestia-Dev/rclone-manager/releases/download/v#{version}/RClone.Manager_#{version}_aarch64.dmg"
    sha256 "c9a3d766c26f52df0d35699b9f3d31d8c7703c99c1efb6b5a161ae06d2c025db"
  end
  on_intel do
    url "https://github.com/Zarestia-Dev/rclone-manager/releases/download/v#{version}/RClone.Manager_#{version}_x64.dmg"
    sha256 "30fc220b7ba2add09d1af47552ffc3742f4b4b9de42635bf0e139a436e57363c"
  end
  name "RClone Manager"
  desc "GUI for rclone built with Angular and Tauri"
  homepage "https://github.com/Zarestia-Dev/rclone-manager"
  depends_on macos: ">= :ventura" # macOS 13
  postflight do
    system "/usr/bin/xattr", "-rd", "com.apple.quarantine", "#{appdir}/RClone Manager.app"
  end
  app "RClone Manager.app"
  zap trash: [
    "~/Library/Application Support/io.github.zarestia_dev.rclone-manager",
    "~/Library/Caches/io.github.zarestia_dev.rclone-manager",
    "~/Library/Preferences/io.github.zarestia_dev.rclone-manager.plist",
    "~/Library/Saved Application State/io.github.zarestia_dev.rclone-manager.savedState",
  ]
end
