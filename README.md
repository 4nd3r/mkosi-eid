# Eesti ID-tarkvara konteineris

Ehita `mkosi` abil [nspawn konteiner](https://www.freedesktop.org/software/systemd/man/systemd-nspawn.html),
mille sees on Ubuntu 22.04, `opensc-tool`, `qdigidoc4`, `firefox-esr` ja muu
vajalik, et ID-kaart pildi ette võtaks. Et kõik järgnev töötaks, peab olema
täidetud hunnik tingimusi ja esimese hooga ei pruugi õnnestuda, aga minul
*Debian Sid*i peal töötab. Soovitan enne käivitamist koodi uurida. Jõudu
tööle!

Vajalikud on järgmised sõltuvused:
[`mkosi` v22](https://github.com/systemd/mkosi/tree/v22),
`apt`,
`bubblewrap`,
`pcscd` (`--disable-polkit`),
`sudo`,
`systemd-container`,
`uidmap`,
`xorg`
ja ilmselt midagi veel.

Töötab ainult **X**iga, ei oska midagi arvata moodsamatest lahendustest.

Kasutama peaks umbes nii:
```
make
sudo make install
machinectl shell $USER@eid
```
