EAPI=8

EGIT_REPO_URI="https://github.com/mbaraa/${PN}.git"

inherit git-r3 go-module

DESCRIPTION="Gentoo's Eix with extra steps"
HOMEPAGE="https://wiki.gentoo.org/wiki/Eloi"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	>=dev-go/go-1.19:1
"

src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}

src_compile() {
	go build -ldflags "-s -w" || die "build failed"
}

src_install() {
	dobin eloi
	dodoc README.md
}
