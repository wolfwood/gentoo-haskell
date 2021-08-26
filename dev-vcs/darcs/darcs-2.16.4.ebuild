# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999
#hackport: flags: +library,+executable,-hpc,-warn-as-error,+pkgconfig,-rts,-static,-optimize,hashed-storage-diff:diff,+http

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="a distributed, interactive, smart revision control system"
HOMEPAGE="http://darcs.net/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="curl +terminfo +threaded"

RESTRICT=test # 3 test cases failing as of ghc-8.10.6

RDEPEND=">=dev-haskell/async-2.0.2:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/attoparsec-0.13.0.1:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1.7:=[profile?] <dev-haskell/base16-bytestring-1.1:=[profile?]
	>=dev-haskell/conduit-1.3.0:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/constraints-0.11:=[profile?] <dev-haskell/constraints-0.13:=[profile?]
	>=dev-haskell/cryptonite-0.24:=[profile?]
	>=dev-haskell/data-ordlist-0.4:=[profile?] <dev-haskell/data-ordlist-0.5:=[profile?]
	>=dev-haskell/fgl-5.5.2.3:=[profile?] <dev-haskell/fgl-5.8:=[profile?]
	>=dev-haskell/hashable-1.2.3.3:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/haskeline-0.7.2:=[profile?] <dev-haskell/haskeline-0.9:=[profile?]
	>=dev-haskell/html-1.0.1.2:=[profile?] <dev-haskell/html-1.1:=[profile?]
	>=dev-haskell/http-conduit-2.3:=[profile?] <dev-haskell/http-conduit-2.4:=[profile?]
	>=dev-haskell/http-types-0.12.1:=[profile?] <dev-haskell/http-types-0.12.4:=[profile?]
	>=dev-haskell/memory-0.14:=[profile?] <dev-haskell/memory-0.16:=[profile?]
	>=dev-haskell/mmap-0.5.9:=[profile?] <dev-haskell/mmap-0.6:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.8:=[profile?]
	>=dev-haskell/old-time-1.1.0.3:=[profile?] <dev-haskell/old-time-1.2:=[profile?]
	>=dev-haskell/parsec-3.1.9:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/regex-applicative-0.2:=[profile?] <dev-haskell/regex-applicative-0.4:=[profile?]
	>=dev-haskell/regex-compat-tdfa-0.95.1:=[profile?] <dev-haskell/regex-compat-tdfa-0.96:=[profile?]
	>=dev-haskell/stm-2.1:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/tar-0.5:=[profile?] <dev-haskell/tar-0.6:=[profile?]
	>=dev-haskell/temporary-1.2.1:=[profile?] <dev-haskell/temporary-1.4:=[profile?]
	>=dev-haskell/text-1.2.1.3:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unix-compat-0.5:=[profile?] <dev-haskell/unix-compat-0.6:=[profile?]
	>=dev-haskell/utf8-string-1:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/zip-archive-0.3:=[profile?] <dev-haskell/zip-archive-0.5:=[profile?]
	>=dev-haskell/zlib-0.6.1.2:=[profile?] <dev-haskell/zlib-0.7.0.0:=[profile?]
	>=dev-lang/ghc-8.2.1:=
	curl? ( net-misc/curl )
	terminfo? ( >=dev-haskell/terminfo-0.4.0.2:=[profile?] <dev-haskell/terminfo-0.5:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2 <dev-haskell/cabal-3.3
	test? ( >=dev-haskell/cmdargs-0.10.10 <dev-haskell/cmdargs-0.11
		>=dev-haskell/exceptions-0.6
		>=dev-haskell/findbin-0.0.5 <dev-haskell/findbin-0.1
		>=dev-haskell/hunit-1.3 <dev-haskell/hunit-1.7
		>=dev-haskell/leancheck-0.9 <dev-haskell/leancheck-0.10
		>=dev-haskell/monad-control-0.3.2 <dev-haskell/monad-control-1.1
		>=dev-haskell/quickcheck-2.13
		<dev-haskell/system-fileio-0.4
		>=dev-haskell/system-filepath-0.4.7 <dev-haskell/system-filepath-0.5
		>=dev-haskell/test-framework-0.8.1.1 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3.0.2 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-leancheck-0.0.1 <dev-haskell/test-framework-leancheck-0.1
		>=dev-haskell/test-framework-quickcheck2-0.3.0.3 <dev-haskell/test-framework-quickcheck2-0.4
		dev-haskell/transformers-base )
	curl? ( virtual/pkgconfig )
"
src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck   >= 2.13 && < 2.14' 'QuickCheck >= 2.13' \
		'cryptonite        >= 0.24 && < 0.28' 'cryptonite        >= 0.24'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag curl curl) \
		--flag=executable \
		--flag=-hpc \
		--flag=http \
		--flag=library \
		--flag=-optimize \
		--flag=pkgconfig \
		--flag=-rts \
		--flag=-static \
		$(cabal_flag terminfo terminfo) \
		$(cabal_flag threaded threaded) \
		--flag=-warn-as-error
}

src_install() {
		haskell-cabal_src_install

		# fixup perms in such an awkward way
		mv "${ED}/usr/share/man/man1/darcs.1" "${S}/darcs.1" || die "darcs.1 not found"
		doman "${S}/darcs.1"
}
