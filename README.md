# Eesti ID-tarkvara konteineris

Ehita `mkosi` abil [nspawn konteiner](https://www.freedesktop.org/software/systemd/man/systemd-nspawn.html),
mille sees on Ubuntu 22.04, `open-eid`, `qdigidoc4`, `firefox-esr` ja muu
vajalik, et ID-kaart pildi ette võtaks. Et kõik järgnev töötaks, peab olema
täidetud hunnik tingimusi ja esimese hooga ei pruugi õnnestuda, aga minul
*Debian Sid*i peal töötab. Soovitan enne käivitamist koodi uurida. Jõudu
tööle!

## Sõltuvused

[`mkosi`](https://github.com/systemd/mkosi/commit/19bb5e274d9a9c23891905c4bcbb8f68955a701d) ja
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
