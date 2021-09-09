# About
`guix-channel` is a collection of extra packages I use with Guix

# Build status
![Package builds](https://github.com/emturner/guix-channel/actions/workflows/verify-channel-build.yml/badge.svg)

# Installation
`emturner/guix-channel` can be added as a [Guix channel](https://guix.gnu.org/manual/en/html_node/Channels.html), by modifying `~/.config/guix/channels.scm`:

```scheme
(cons* 
  (channel
    (name 'emturner)
    (url "https://github.com/emturner/guix-channel.git")
    (introduction
      (make-channel-introduction
        "ff09271fb183e51609368602ac6d4dc83b4a0692"
        (openpgp-fingerprint
          "3EB3 077F 0DBF 7DA4 0349  6A6E A737 1EB2 0893 82E6"))))
  %default-channels)
```

