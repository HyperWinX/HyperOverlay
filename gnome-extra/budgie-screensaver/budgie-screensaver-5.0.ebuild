# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson gnome2-utils xdg

DESCRIPTION="Budgie Screensaver is a fork of gnome-screensaver intended for use with Budgie Desktop and is similar in purpose to other screensavers such as MATE Screensaver."
HOMEPAGE="https://github.com/BuddiesOfBudgie/budgie-screensaver"

SRC_URI="https://github.com/BuddiesOfBudgie/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="systemd"
GNOME_MIN_VERSIOM="3.36.0"

DEPEND="
	>=dev-libs/glib-2.64.0:=
	>=gnome-base/gnome-desktop-${GNOME_MIN_VERSIOM}:3
	>=gnome-base/gsettings-desktop-schemas-${GNOME_MIN_VERSIOM}
	>=x11-libs/gtk+-3.1.91:3[X]
	x11-libs/libX11:=
	x11-libs/libXcomposite:=
	dev-libs/dbus-glib
	gnome-base/gnome-common
	sys-libs/pam
	systemd? ( >=sys-apps/systemd-209:0= )"
RDEPEND="${DEPEND}"
BDEPEND="dev-util/meson"

src_unpack() {
	unpack ${P}.tar.gz
}

src_configure() {
	local emesonargs=(
		$(meson_use systemd with-systemd)
	)

	meson_src_configure
}

src_compile() {
	meson_src_compile
}

pkg_postinst() {
	xdg_pkg_postinst
	gnome2_schemas_update
}

pkg_postrm() {
	xdg_pkg_postrm
	gnome2_schemas_update
}
