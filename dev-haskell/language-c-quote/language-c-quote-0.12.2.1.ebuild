# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="C/CUDA/OpenCL/Objective-C quasiquoting library"
HOMEPAGE="https://github.com/mainland/language-c-quote"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+full-haskell-antiquotes"

RDEPEND=">=dev-haskell/exception-mtl-0.3:=[profile?] <dev-haskell/exception-mtl-0.5:=[profile?]
	>=dev-haskell/exception-transformers-0.3:=[profile?] <dev-haskell/exception-transformers-0.5:=[profile?]
	>=dev-haskell/mainland-pretty-0.7:=[profile?] <dev-haskell/mainland-pretty-0.8:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/srcloc-0.4:=[profile?] <dev-haskell/srcloc-0.6:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/symbol-0.1:=[profile?] <dev-haskell/symbol-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	full-haskell-antiquotes? ( >=dev-haskell/haskell-src-meta-0.4:=[profile?] <dev-haskell/haskell-src-meta-0.9:=[profile?] dev-haskell/safe )
	!full-haskell-antiquotes? ( >=dev-haskell/haskell-exp-parser-0.1:=[profile?] <dev-haskell/haskell-exp-parser-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.10
	dev-haskell/happy
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'safe <= 0.3.9' 'safe' \
		'haskell-src-meta >= 0.4 && < 0.7' 'haskell-src-meta >= 0.4 && < 0.9'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag full-haskell-antiquotes full-haskell-antiquotes)
}
