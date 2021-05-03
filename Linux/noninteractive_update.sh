os_updates () {
  echo "Installing updates..."
  DEBIAN_FRONTEND=noninteractive \
    apt-get \
    -o "Dpkg::Options::=--force-confold" \
    upgrade -q \
    -y --allow-downgrades --allow-remove-essential --allow-change-held-packages
  echo "Updates installed."

}
