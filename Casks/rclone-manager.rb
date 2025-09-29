cask "rclone-manager" do
  version "0.1.2"

  on_intel do
    sha256 "c5eb24df822dfabdb9f013891f852a71a885d57e64dc1907496e1235d1f689ec"
    url "https://github.com/RClone-Manager/rclone-manager/releases/download/v#{version}-beta/RClone.Manager_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "626954392094c50d790c4f69b5e39c6c7815061d3e49e31ef3f3dbd1cc2eceee"
    url "https://github.com/RClone-Manager/rclone-manager/releases/download/v#{version}-beta/RClone.Manager_#{version}_aarch64.dmg"
  end

  name "RClone Manager"
  desc "GUI manager for RClone"
  homepage "https://github.com/RClone-Manager/rclone-manager"

  app "RClone Manager.app"
end
