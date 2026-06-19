EAPI=8

inherit go-module

DESCRIPTION="Dotfiles synchronizer thingy"
HOMEPAGE="https://dotsync.org/"
SRC_URI="https://codeberg.org/lordbaraa/dotsync/archive/v${PV}.tar.gz -> ${P}.tar.gz
			${EGO_SUM_SRC_URI}"

go-module_set_globals

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"
IUSE=""

BDEPEND=">=dev-lang/go-1.20"

src_compile() {
	go get
	go build -o dotsync\
		-ldflags="-w -s"
}

src_install() {
	dobin dotsync
	dodoc README.md
}
