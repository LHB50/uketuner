# Uke Tuner

A single-screen soprano ukulele tuner (G4 C4 E4 A4) that runs in the browser. It listens through the microphone, detects pitch with the YIN algorithm, and lights up a string square when it is within 5 cents.

Live: https://lhb50.github.io/uketuner/

On Android, open the link in Chrome and choose Install app from the menu to get it in your app drawer. It works offline after the first visit.

Edit `tuner-body.html`, then run `./build.sh` to regenerate `index.html`.
