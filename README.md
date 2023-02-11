# Eesti ID-tarkvara konteineris

Ehita `mkosi` abil Ubuntu 22.04 konteiner, mille sees on `firefox-esr` ja `qdigidoc4`.

Et kõik järnev töötaks, peab olema täidetud hunnik tingimusi, aga minul *Debian Sid*i peal töötab.

Jõudu tööle!

## Sõltuvused

[`mkosi`](https://github.com/systemd/mkosi) ja
`apt`,
`bubblewrap`,
`debootstrap`,
`pulseaudio | pipewire-pulse`,
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
