# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GUI functions as used in the book \"The Haskell School of Expression\""
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="2/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/cairo-0.12:0=[profile?]
		>=dev-haskell/gtk-0.12:2=[profile?]
		>=dev-haskell/stm-2.0:=[profile?]
		<dev-haskell/stm-3.0:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		x11-libs/gtk+:2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	default

	cabal_chdeps \
		'cairo >= 0.12 && < 0.13' 'cairo >= 0.12' \
		'gtk   >= 0.12 && < 0.13' 'gtk   >= 0.12'
}
