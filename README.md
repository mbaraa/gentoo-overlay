# mbaraa-overlay

My personal Gentoo Overlay repo, contains the following:

- **app-portage/eloi**
  - Gentoo's eix with extra steps, an AUR-like package manager for Gentoo.
  - [https://github.com/mbaraa/eloi](https://github.com/mbaraa/eloi)

- **app-misc/dotsync**
  - Dotfiles synchronizer thingy.
  - [https://github.com/mbaraa/dotsync](https://github.com/mbaraa/dotsync)

- **dev-util/binaryen**
  - Optimizer and compiler/toolchain library for WebAssembly
  - [https://github.com/WebAssembly/binaryen/](https://github.com/WebAssembly/binaryen/)

- **dev-vcs/gitlogue**
  - A Git history screensaver - watch your code rewrite itself
  - [https://github.com/unhappychoice/gitlogue](https://github.com/unhappychoice/gitlogue)

- **media-sound/grievous**
  - Named after General Grievous, where it generates noises from text files or a provided URL, just like how Grievous makes weird noises when he talks.
  - [https://github.com/mbaraa/grievous](https://github.com/mbaraa/grievous)

- **games-misc/lsdcat**
  - Rainbows and unicorns in Rust!
  - [https://github.com/mbaraa/lsdcat](https://github.com/mbaraa/lsdcat)

# Installation

1. Create the overlay's metadata file `/etc/portage/repos.conf/mbaraa.conf`
2. Add the overlay's metadata to the created file

```
[mbaraa-overlay]
location = /var/db/repos/mbaraa-overlay
sync-type = git
sync-uri = https://github.com/mbaraa/gentoo-overlay.git
```

3. Sync the new overlay

```bash
; emerge --sync mbraraa-overlay
```
