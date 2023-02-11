# Eesti ID-tarkvara konteineris

Ehita `mkosi` abil Ubuntu 22.04 konteiner ([systemd-nspawn](https://www.freedesktop.org/software/systemd/man/systemd-nspawn.html)
jaoks), mille sees on `firefox-esr`, `qdigidoc4` ja muu vajalik, et ID-kaart
pildi ette võtaks. Et kõik järnev töötaks, peab olema täidetud hunnik tingimusi
ja esimese hooga ei pruugi õnnestuda, aga minul *Debian Sid*i peal töötab.
Soovitan enne käivitamist koodi uurida. Jõudu tööle!

## Sõltuvused

[`mkosi`](https://github.com/systemd/mkosi) ja
`apt`,
`bubblewrap`,
`debootstrap`,
`pcscd`,
`sudo`,
`systemd-container`,
`uidmap`,
`xorg`,
`zstd`,
...

Töötab ainult **X**iga, ei oska midagi arvata moodsamatest lahendustest.

## Ehitamine

```
$ git clone https://github.com/4nd3r/mkosi-eid
$ cd mkosi-eid
$ make
```

## Kasutamine

```
$ sudo machinectl shell $USER@eid
```
