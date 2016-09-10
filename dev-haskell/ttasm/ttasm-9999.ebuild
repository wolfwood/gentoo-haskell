# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit git-r3 haskell-cabal

DESCRIPTION="TTF assembler"
HOMEPAGE="https://github.com/CIFASIS/ttasm"
EGIT_REPO_URI="https://github.com/CIFASIS/ttasm.git"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/bitwise:=[profile?]
	dev-haskell/monad-loops:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
