# Eesti ID-tarkvara konteineris

Ehita `mkosi` abil [nspawn konteiner](https://www.freedesktop.org/software/systemd/man/systemd-nspawn.html),
mille sees on Ubuntu 22.04, `opensc-tool`, `qdigidoc4`, `firefox-esr` ja muu
vajalik, et ID-kaart pildi ette võtaks. Et kõik järgnev töötaks, peab olema
täidetud hunnik tingimusi ja esimese hooga ei pruugi õnnestuda, aga minul
*Debian Sid*i peal töötab. Soovitan enne käivitamist koodi uurida. Jõudu
tööle!

## Sõltuvused

[`mkosi` v18](https://github.com/systemd/mkosi/releases/tag/v18) ja
`apt`,
`bubblewrap`,
`debootstrap`,
`pcscd`,
`sudo`,
`systemd-container`,
`uidmap`,
`xorg`,
...

Töötab ainult **X**iga, ei oska midagi arvata moodsamatest lahendustest.

## Ehitamine

```
$ git clone https://github.com/4nd3r/mkosi-eid
$ cd mkosi-eid
$ make
$ sudo make install
```

## Kasutamine

```
$ sudo machinectl shell $USER@eid
```
