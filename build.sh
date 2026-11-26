#!/bin/sh
# Wraps the tuner body (shared with the Claude artifact preview) into the installable index.html.
set -e
BODY="${1:-tuner-body.html}"
{
printf '%s\n' '<!doctype html>' '<html lang="en">' '<head>' '<meta charset="utf-8">' \
 '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
 '<meta name="theme-color" content="#17120f">' \
 '<link rel="manifest" href="manifest.webmanifest">' \
 '<link rel="icon" href="icons/icon.svg" type="image/svg+xml">' \
 '<link rel="apple-touch-icon" href="icons/apple-touch-icon.png">' \
 '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}[hidden]{display:none!important}</style>' \
 '</head>' '<body>'
cat "$BODY"
printf '%s\n' '' '<script>if ("serviceWorker" in navigator) addEventListener("load", () => navigator.serviceWorker.register("sw.js", { updateViaCache: "none" }).catch(() => {}));</script>' '</body>' '</html>'
} > index.html
