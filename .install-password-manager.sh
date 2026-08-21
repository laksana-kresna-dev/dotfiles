#!/bin/sh

# Check if pass, gopass, and keepassxc are already installed
if command -v pass >/dev/null 2>&1 && command -v gopass >/dev/null 2>&1 && command -v keepassxc >/dev/null 2>&1; then
	exit 0
fi

echo "==> Required password managers not found. Starting installation (pass, gopass, keepassxc)..."

OS="$(uname -s)"

case "$OS" in
Linux)
	if [ -f /etc/os-release ]; then
		. /etc/os-release
		case "$ID" in
		arch | manjaro | endeavouros)
			echo "==> Detected Arch Linux. Installing packages via pacman..."
			sudo pacman -S --needed --noconfirm pass gopass keepassxc
			;;
		ubuntu | debian | pop)
			echo "==> Detected Debian/Ubuntu. Installing packages via apt..."
			sudo apt-get update && sudo apt-get install -y pass gopass keepassxc
			;;
		fedora | rhel)
			echo "==> Detected Fedora/RHEL. Installing packages via dnf..."
			sudo dnf install -y pass gopass keepassxc
			;;
		*)
			echo "Linux distribution ($ID) is not supported automatically."
			exit 1
			;;
		esac
	fi
	;;
Darwin)
	echo "==> Detected macOS. Installing packages via Homebrew..."
	brew install pass gopass keepassxc
	;;
*)
	echo "Operating system $OS is not supported by this script."
	exit 1
	;;
esac
