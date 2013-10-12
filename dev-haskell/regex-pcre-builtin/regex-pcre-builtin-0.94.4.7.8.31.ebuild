# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Replaces/Enhances Text.Regex"
HOMEPAGE="http://hackage.haskell.org/package/regex-pcre"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+newbase +splitbase"

RDEPEND=">=dev-haskell/regex-base-0.93:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

PATCHES=("${FILESDIR}"/${P}-ghc-7.7.patch)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag newbase newbase) \
		$(cabal_flag splitbase splitbase)
}
