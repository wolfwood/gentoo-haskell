# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="RIFF parser for Haskell"
HOMEPAGE="https://bitbucket.org/robertmassaioli/riff/overview"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/either-4.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'binary >=0.7 && <0.8' 'binary >=0.7' \
		'either == 4.3.*' 'either >= 4.3' \
		'filepath >=1.3 && <1.4' 'filepath >=1.3' \
		'transformers == 0.4.*' 'transformers >= 0.4'
}
