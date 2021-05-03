chrome_auth () {
  wget https://dl.google.com/linux/linux_signing_key.pub -O- | apt-key add -
  echo "Done"
}

chrome_in () {
  echo "Installing Google Chrome."
  apt -y install libxss1 libappindicator1 libindicator7
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  dpkg -i google-chrome*.deb
  chrome_auth
}
