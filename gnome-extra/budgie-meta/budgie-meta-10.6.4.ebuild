# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Meta ebuild for Budgie Desktop with all official releases of needed packages"
HOMEPAGE="https://blog.buddiesofbudgie.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64 x86 ~arm ~arm64"
IUSE="minimal"

RDEPEND="
	>=gnome-extra/budgie-screensaver-5.0.2
	>=gnome-extra/budgie-desktop-10.6.4
	>=gnome-extra/budgie-desktop-view-1.2
	>=gnome-extra/budgie-control-center-1.1.1
	!minimal? (
		>=gnome-extra/budgie-extras-1.5.0
		>=gnome-extra/budgie-backgrounds-0.1
	)
"
