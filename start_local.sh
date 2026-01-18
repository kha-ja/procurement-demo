#!/bin/bash
# Opens the demo HTML files in the default browser

cd "$(dirname "$0")"

case "$1" in
  phone)
    open mack-mockup-phone.html
    ;;
  laptop)
    open mack-mockup-laptop.html
    ;;
  *)
    open index.html
    ;;
esac
