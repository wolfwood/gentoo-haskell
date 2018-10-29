# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="PureScript Programming Language Compiler"
HOMEPAGE="http://www.purescript.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="release"

RESTRICT=test # needs nodejs, npm and stuff

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/aeson-better-errors-0.8:=[profile?]
	>=dev-haskell/ansi-terminal-0.7.1:=[profile?] <dev-haskell/ansi-terminal-0.9:=[profile?]
	dev-haskell/ansi-wl-pprint:=[profile?]
	>=dev-haskell/base-compat-0.6.0:=[profile?]
	>=dev-haskell/blaze-html-0.8.1:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/bower-json-1.0.0.1:=[profile?] <dev-haskell/bower-json-1.1:=[profile?]
	>=dev-haskell/boxes-0.1.4:=[profile?] <dev-haskell/boxes-0.2.0:=[profile?]
	>=dev-haskell/cheapskate-0.1:=[profile?] <dev-haskell/cheapskate-0.2:=[profile?]
	dev-haskell/clock:=[profile?]
	>=dev-haskell/data-ordlist-0.4.7.0:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/edit-distance:=[profile?]
	dev-haskell/file-embed:=[profile?]
	>=dev-haskell/fsnotify-0.2.1:=[profile?]
	>=dev-haskell/glob-0.9:=[profile?] <dev-haskell/glob-0.10:=[profile?]
	>=dev-haskell/haskeline-0.7.0.0:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/language-javascript-0.6.0.9:=[profile?] <dev-haskell/language-javascript-0.7:=[profile?]
	>=dev-haskell/lens-4:=[profile?] <dev-haskell/lens-5:=[profile?]
	>=dev-haskell/lifted-base-0.2.3:=[profile?] <dev-haskell/lifted-base-0.2.4:=[profile?]
	>=dev-haskell/monad-control-1.0.0.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/monad-logger-0.3:=[profile?] <dev-haskell/monad-logger-0.4:=[profile?]
	>=dev-haskell/mtl-2.1.0:=[profile?] <dev-haskell/mtl-2.3.0:=[profile?]
	dev-haskell/network:=[profile?]
	>=dev-haskell/optparse-applicative-0.13.0:=[profile?]
	>=dev-haskell/parallel-3.2:=[profile?] <dev-haskell/parallel-3.3:=[profile?]
	>=dev-haskell/parsec-3.1.10:=[profile?]
	>=dev-haskell/pattern-arrows-0.0.2:=[profile?] <dev-haskell/pattern-arrows-0.1:=[profile?]
	>=dev-haskell/protolude-0.1.6:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	>=dev-haskell/safe-0.3.9:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/scientific-0.3.4.9:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.16.2:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/sourcemap-0.1.6:=[profile?]
	>=dev-haskell/spdx-0.2:=[profile?] <dev-haskell/spdx-0.3:=[profile?]
	dev-haskell/split:=[profile?]
	>=dev-haskell/stm-0.2.4.0:=[profile?]
	dev-haskell/stringsearch:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/transformers-base-0.4.0:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.3.0:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/utf8-string-1:=[profile?] <dev-haskell/utf8-string-2:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/wai-3:=[profile?] <dev-haskell/wai-4:=[profile?]
	>=dev-haskell/wai-websockets-3:=[profile?] <dev-haskell/wai-websockets-4:=[profile?]
	>=dev-haskell/warp-3:=[profile?] <dev-haskell/warp-4:=[profile?]
	>=dev-haskell/websockets-0.9:=[profile?] <dev-haskell/websockets-0.13:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	!release? ( >=dev-haskell/gitrev-1.2.0:=[profile?] <dev-haskell/gitrev-1.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/hspec
		dev-haskell/hspec-discover
		dev-haskell/hunit
		dev-haskell/tasty
		dev-haskell/tasty-hspec )
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc-8.4.patch
	"${FILESDIR}"/${P}-hspec-2.5.0.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.8 && <4.11' 'base >= 4.8' \
		'aeson >=1.0 && <1.3' 'aeson >=1.0'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag release release)
}
