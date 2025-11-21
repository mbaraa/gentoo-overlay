EAPI=8

inherit git-r3

DESCRIPTION="Optimizer and compiler/toolchain library for WebAssembly"
HOMEPAGE="https://github.com/WebAssembly/binaryen/"
EGIT_REPO_URI="https://github.com/WebAssembly/binaryen.git"
EGIT_BRANCH="main"
EGIT_COMMIT="version_125"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-vcs/git
	>=dev-build/cmake-3.31.5
	sys-devel/gcc
"

DEPEND=""

BDEPEND="
	>=net-libs/nodejs-18.3.0
"

src_prepare() {
	default
	cd binaryen
	git submodule update --init --recursive
}

src_compile() {
	cd "${WORKDIR}/binaryen-${PV}"

	cmake \
		-B "_build" \
		-DCMAKE_BUILD_TYPE=Release \
		-DCMAKE_INSTALL_PREFIX="/usr" \
		-DCMAKE_INSTALL_LIBDIR="lib" \
		-DENABLE_WERROR=OFF \
		./

	cmake --build "_build"
}

src_install() {
	cd "${WORKDIR}/binaryen-${PV}/_build"

	dobin bin/binaryen-lit
	dobin bin/binaryen-unittests
	dobin bin/wasm-as
	dobin bin/wasm-ctor-eval
	dobin bin/wasm-dis
	dobin bin/wasm-emscripten-finalize
	dobin bin/wasm-fuzz-lattices
	dobin bin/wasm-fuzz-types
	dobin bin/wasm-merge
	dobin bin/wasm-metadce
	dobin bin/wasm-opt
	dobin bin/wasm-reduce
	dobin bin/wasm-shell
	dobin bin/wasm-split
	dobin bin/wasm2js

	dolib.so lib/libbinaryen.so
}

pkg_postinst() {
	einfo "FOR THE REPUBLIC!"
}
