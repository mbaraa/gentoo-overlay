# lordbaraa-overlay

My personal Gentoo Overlay repo, contains the following:

- **app-portage/eloi**
  - Gentoo's eix with extra steps, an AUR-like package manager for Gentoo.
  - [https://codeberg.org/lordbaraa/eloi](https://codeberg.org/lordbaraa/eloi)

- **app-misc/dotsync**
  - Dotfiles synchronizer thingy.
  - [https://codeberg.org/lordbaraa/dotsync](https://codeberg.org/lordbaraa/dotsync)

- **dev-util/binaryen**
  - Optimizer and compiler/toolchain library for WebAssembly
  - [https://github.com/WebAssembly/binaryen/](https://github.com/WebAssembly/binaryen/)

- **dev-vcs/gitlogue**
  - A Git history screensaver - watch your code rewrite itself
  - [https://github.com/unhappychoice/gitlogue](https://github.com/unhappychoice/gitlogue)

- **media-sound/grievous**
  - Named after General Grievous, where it generates noises from text files or a provided URL, just like how Grievous makes weird noises when he talks.
  - [https://codeberg.org/lordbaraa/grievous](https://codeberg.org/lordbaraa/grievous)

- **games-misc/lsdcat**
  - Rainbows and unicorns in Rust!
  - [https://codeberg.org/lordbaraa/lsdcat](https://codeberg.org/lordbaraa/lsdcat)

# Installation

1. Create the overlay's metadata file `/etc/portage/repos.conf/lordbaraa.conf`
2. Add the overlay's metadata to the created file

```
[lordbaraa-overlay]
location = /var/db/repos/lordbaraa-overlay
sync-type = git
sync-uri = https://codeberg.org/lordbaraa/gentoo-overlay.git
```

3. Sync the new overlay

```bash
; emerge --sync lordbaraa-overlay
```
