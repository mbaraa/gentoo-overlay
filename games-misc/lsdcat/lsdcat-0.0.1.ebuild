# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.3

EAPI=8

CRATES="
"

inherit cargo

DESCRIPTION="Rainbows and unicorns in Rust!"
HOMEPAGE="https://github.com/mbaraa/lsdcat"
SRC_URI="
	https://github.com/mbaraa/${PN}/archive/v${PV}.tar.gz -> ${PN}.tar.gz
    ${CARGO_CRATE_URIS}
"

LICENSE="GPL-3"
# Dependent crate licenses
LICENSE+=""
SLOT="1"
KEYWORDS="~amd64"

src_install() {
	cargo_src_install
}
