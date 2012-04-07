# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Provides some basic WAI handlers and middleware."
HOMEPAGE="http://github.com/yesodweb/wai"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-haskell/ansi-terminal[profile?]
		>=dev-haskell/blaze-builder-0.2.1.4[profile?]
		<dev-haskell/blaze-builder-0.4[profile?]
		=dev-haskell/blaze-builder-conduit-0.4*[profile?]
		>=dev-haskell/case-insensitive-0.2[profile?]
		=dev-haskell/conduit-0.4*[profile?]
		>=dev-haskell/data-default-0.3[profile?]
		<dev-haskell/data-default-0.5[profile?]
		>=dev-haskell/fast-logger-0.0.2[profile?]
		=dev-haskell/http-types-0.6*[profile?]
		>=dev-haskell/network-2.2.1.5[profile?]
		<dev-haskell/network-2.4[profile?]
		>=dev-haskell/text-0.7[profile?]
		<dev-haskell/text-0.12[profile?]
		>=dev-haskell/time-1.1.4[profile?]
		>=dev-haskell/transformers-0.2.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		=dev-haskell/wai-1.2*[profile?]
		=dev-haskell/zlib-conduit-0.4*[profile?]
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/cabal-1.10
			dev-haskell/wai-test[profile?]
			=dev-haskell/hspec-0.9*[profile?]
		)
		"

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
