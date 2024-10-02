# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	addr2line-0.24.1
	adler2-2.0.0
	aho-corasick-1.1.3
	atomic-waker-1.1.2
	autocfg-1.3.0
	backtrace-0.3.74
	base64-0.22.1
	bitflags-2.6.0
	bumpalo-3.16.0
	byteorder-1.5.0
	bytes-1.7.1
	cc-1.1.19
	cfg-if-1.0.0
	cmake-0.1.51
	core-foundation-0.9.4
	core-foundation-sys-0.8.7
	encoding_rs-0.8.34
	equivalent-1.0.1
	errno-0.3.9
	fastrand-2.1.1
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.2.1
	futures-channel-0.3.30
	futures-core-0.3.30
	futures-sink-0.3.30
	futures-task-0.3.30
	futures-util-0.3.30
	getrandom-0.2.15
	gimli-0.31.0
	h2-0.4.6
	hashbrown-0.14.5
	hermit-abi-0.3.9
	http-1.1.0
	http-body-1.0.1
	http-body-util-0.1.2
	httparse-1.9.4
	hyper-1.4.1
	hyper-rustls-0.27.3
	hyper-tls-0.6.0
	hyper-util-0.1.8
	idna-0.5.0
	indexmap-2.5.0
	ipnet-2.10.0
	itoa-1.0.11
	js-sys-0.3.70
	libc-0.2.158
	linux-raw-sys-0.4.14
	lock_api-0.4.12
	log-0.4.22
	memchr-2.7.4
	mime-0.3.17
	miniz_oxide-0.8.0
	mio-1.0.2
	native-tls-0.2.12
	object-0.36.4
	once_cell-1.19.0
	openssl-0.10.66
	openssl-macros-0.1.1
	openssl-probe-0.1.5
	openssl-sys-0.9.103
	parking_lot-0.12.3
	parking_lot_core-0.9.10
	percent-encoding-2.3.1
	pin-project-1.1.5
	pin-project-internal-1.1.5
	pin-project-lite-0.2.14
	pin-utils-0.1.0
	pkg-config-0.3.30
	ppv-lite86-0.2.20
	proc-macro2-1.0.86
	quote-1.0.37
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.4
	redox_syscall-0.5.4
	regex-1.10.6
	regex-automata-0.4.7
	regex-syntax-0.8.4
	reqwest-0.12.7
	ring-0.17.8
	rustc-demangle-0.1.24
	rustix-0.38.37
	rustls-0.23.13
	rustls-pemfile-2.1.3
	rustls-pki-types-1.8.0
	rustls-webpki-0.102.8
	ryu-1.0.18
	schannel-0.1.24
	scopeguard-1.2.0
	security-framework-2.11.1
	security-framework-sys-2.11.1
	serde-1.0.210
	serde_derive-1.0.210
	serde_json-1.0.128
	serde_urlencoded-0.7.1
	shlex-1.3.0
	signal-hook-registry-1.4.2
	slab-0.4.9
	smallvec-1.13.2
	socket2-0.5.7
	spin-0.9.8
	subtle-2.6.1
	syn-2.0.77
	sync_wrapper-1.0.1
	system-configuration-0.6.1
	system-configuration-sys-0.6.0
	tempfile-3.12.0
	tinyvec-1.8.0
	tinyvec_macros-0.1.1
	tokio-1.40.0
	tokio-macros-2.4.0
	tokio-native-tls-0.3.1
	tokio-rustls-0.26.0
	tokio-util-0.7.12
	tower-0.4.13
	tower-layer-0.3.3
	tower-service-0.3.3
	tracing-0.1.40
	tracing-core-0.1.32
	try-lock-0.2.5
	unicode-bidi-0.3.15
	unicode-ident-1.0.13
	unicode-normalization-0.1.23
	untrusted-0.9.0
	url-2.5.2
	vcpkg-0.2.15
	want-0.3.1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.93
	wasm-bindgen-backend-0.2.93
	wasm-bindgen-futures-0.4.43
	wasm-bindgen-macro-0.2.93
	wasm-bindgen-macro-support-0.2.93
	wasm-bindgen-shared-0.2.93
	web-sys-0.3.70
	windows-registry-0.2.0
	windows-result-0.2.0
	windows-strings-0.1.0
	windows-sys-0.52.0
	windows-sys-0.59.0
	windows-targets-0.52.6
	windows_aarch64_gnullvm-0.52.6
	windows_aarch64_msvc-0.52.6
	windows_i686_gnu-0.52.6
	windows_i686_gnullvm-0.52.6
	windows_i686_msvc-0.52.6
	windows_x86_64_gnu-0.52.6
	windows_x86_64_gnullvm-0.52.6
	windows_x86_64_msvc-0.52.6
	zerocopy-0.7.35
	zerocopy-derive-0.7.35
	zeroize-1.8.1
"

inherit cargo

DESCRIPTION="Named after General Grievous, where it generates noises from text files or a provided URL, just like how Grievous makes weird noises when he talks."
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/mbaraa/grievous"
SRC_URI="$(cargo_crate_uris)"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 GPL-3 ISC MIT Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"