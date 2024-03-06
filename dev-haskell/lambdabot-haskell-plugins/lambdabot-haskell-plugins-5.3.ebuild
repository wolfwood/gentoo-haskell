# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lambdabot Haskell plugins"
HOMEPAGE="https://wiki.haskell.org/Lambdabot"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/arrows-0.4:=[profile?]
	>=dev-haskell/data-memocombinators-0.4:=[profile?]
	>=dev-haskell/haskell-src-exts-simple-1.18:=[profile?] <dev-haskell/haskell-src-exts-simple-1.24:=[profile?]
	>=dev-haskell/http-4000:=[profile?]
	>=dev-haskell/iospec-0.2:=[profile?]
	>=dev-haskell/lambdabot-core-5.3:=[profile?] <dev-haskell/lambdabot-core-5.4:=[profile?]
	>=dev-haskell/lambdabot-reference-plugins-5.3:=[profile?] <dev-haskell/lambdabot-reference-plugins-5.4:=[profile?]
	>=dev-haskell/lambdabot-trusted-5.3:=[profile?] <dev-haskell/lambdabot-trusted-5.4:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?]
	>=dev-haskell/logict-0.5:=[profile?]
	>=dev-haskell/monadrandom-0.1:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/mueval-0.9.3:=[profile?]
	>=dev-haskell/network-2.7:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/numbers-3000:=[profile?]
	>=dev-haskell/oeis-0.3.1:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	>=dev-haskell/quickcheck-2:=[profile?]
	>=dev-haskell/regex-tdfa-1.1:=[profile?]
	>=dev-haskell/show-0.4:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-haskell/vector-space-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	>=dev-util/hoogle-5.0.17.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
