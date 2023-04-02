# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library for creating and modifying zip archives"
HOMEPAGE="https://github.com/jgm/zip-archive"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable"

RDEPEND=">=dev-haskell/digest-0.0.0.1:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( dev-haskell/hunit
		dev-haskell/temporary )
"
# non-haskell depend
DEPEND="${DEPEND}
	test? ( app-arch/zip )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable)
}
