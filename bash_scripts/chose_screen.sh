#!/usr/bin/env bash

# Get hidden bags
set -euo pipefail

# Define the directory containing the scripts
SCRIPT_DIR="$HOME/.config/qtile/bash_scripts/screenlayout"

# Main function
main() {
    # Show a rofi menu with two options: "VGA" and "Main screen"
    choice=$(printf '%s\n' "VGA" "Main screen" | rofi -dmenu -lines 3 -p "Y4Z - Do")

    case "$choice" in
        "VGA")
            "$SCRIPT_DIR/vga.sh"
            ;;
        "Main screen")
            "$SCRIPT_DIR/main.sh"
            ;;
        *)
            # Invalid choice, display an error message and exit with a non-zero status
            echo "Invalid choice: $choice"
            exit 1
            ;;
    esac
}

main
