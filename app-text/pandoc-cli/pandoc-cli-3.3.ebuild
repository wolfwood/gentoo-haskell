# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Conversion between documentation formats"
HOMEPAGE="https://pandoc.org"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+lua nightly +server"

RDEPEND="~dev-haskell/pandoc-3.3:=
	dev-haskell/text:=
	>=dev-lang/ghc-9.0.2:=
	lua? ( >=dev-haskell/hslua-cli-1.4.1:= <dev-haskell/hslua-cli-1.5:=
		>=dev-haskell/pandoc-lua-engine-0.3.1:= <dev-haskell/pandoc-lua-engine-0.4:=
		>=dev-haskell/temporary-1.1:= <dev-haskell/temporary-1.4:= )
	server? ( >=dev-haskell/pandoc-server-0.1.0.6:= <dev-haskell/pandoc-server-0.2:=
			dev-haskell/safe:=
			>=dev-haskell/wai-extra-3.0.24:=
			dev-haskell/warp:= )
	!<app-text/pandoc-3
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag lua lua) \
		$(cabal_flag nightly nightly) \
		$(cabal_flag server server)
}
