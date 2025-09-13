#!/bin/bash

echo "Discord Updater by xFr33z3..."

URL="https://discord.com/api/download/stable?platform=linux&format=deb"

HTML=$(curl -s "$URL")

DEB_URL=$(echo "$HTML" | grep -oP '(?<=href=")https://[^"]+\.deb')

if [ -z "$DEB_URL" ]; then
  echo "❌ Error: .deb file URL not found."
  exit 1
fi

echo "✅ URL Found: $DEB_URL"

wget -O discord.deb "$DEB_URL"

echo "✅ Download completed: discord.deb"

echo "Installing..."

echo "Insert root password to install the discord.deb file."

sudo dpkg -i discord.deb

rm discord.deb
