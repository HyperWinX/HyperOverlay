# SarahMiaOverlay

**Budgie**

Budgie is the default desktop of Solus Operating System, written from scratch. Besides a more modern design, Budgie can emulate the look and feel of the GNOME 2 desktop.

This overlay contains both the budgie-desktop, extras and applets for budgie desktop. Everything that is needed to run budgie-desktop.
budgie-extras add a lot of applets and helper applications.

For more information about budgie you can visit: https://github.com/BuddiesOfBudgie/budgie-desktop/blob/master/README.md

After merging budgie-extras please start the Window Shuffler, some applets will require this (hotcorners mostly). This can be done with the provided Window Shuffler application in your applications list/menu. You can set additional options there as well.
The config for the new window preview from budgie-extras (for alt-tab) is in the Previews Control in your applications list/menu. You can set additional options there as well.

*please note that the ~arm ~arm64 keywords on a number of ebuilds are in testing, budgie itself says either intel or amd cpu's needed but there is an arm tweak tool hence the keywords for testing purposes! If it doesn't work out I will remove these keywords.*

**Other**

This overlay contains 1 other package that will be removed in the future, making this repository budgie only. Ebuilds not related to budgie may be added later if needed but is unlikely.

## Installation:

**1) Overlay**

To add the overlay to portage run the following: (assuming you have eselect-repository installed)

	eselect repository enable SarahMiaOverlay

**2a) Option 1: Budgie Desktop Base**

To install budgie desktop by itself you don't need to do anything special other than the command below (basic emerge command). Then you can emerge budgie-desktop as you would with any other package.

	emerge --ask --verbose budgie-desktop
	

After that is done you can just select the budgie-desktop session from your favorite login manager. Budgie by itself favors lightdm with slick-greeter or gtk-greeter, but is not limited to any.

**2b) option 2: Budgie Meta Package**

Another option is installing budgie-meta. This is a meta package that contains budgie-desktop and screensaver as required, but also includes budgie-desktop-view, budgie-control-center and budgie-extras.

	emerge --ask --verbose budgie-meta

**3) Personalize Budgie Destop with extra applets and applications**

Budgie by itself comes pretty barebones. I recommend you find application for the following parts along with my personal recommendation:

- Merge Budgie Extras for more applets. Other applets can be found as budgie-\*-applet in the overlay
- Basic desktop icons (home/trash/mounted etc) with budgie-desktop-view (or you can let e.g. nemo do this if you want instead)
- File Manager (nemo, will also add desktop icons if you want that)
- Image Viewer (eog - eye of gnome)
- The usual browser, audio and video players and other applications you want to use
- Any gtk/gnome application you want to use since budgie-desktop is based on gnome and uses gtk
	- NOTE: gnome shell extensions will not work. Use budgie-applets for that
	- Anything for gnome-shell only will not work

To personalise your desktop:

- Gnome Tweaks for additional settings
- Change settings in the following applications:
	- Budgie-Control-Center or Gnome Control Center
	- Budgie Desktop Settings
	- (Part of budgie-extras) Window Shuffler Control (tiling/grid support)
	- (Part of budgie-extras) WallStreet Control (rotating wallpapers)
	- (Part of budgie-extras) Previews Control (display applications preview while alt-tabbing)

## Updates:

**2022/09/01)** Big update, several version updates and several stabilizations. Also some old or redundants ebuilds removed. Meta had its components versions locked till new meta is out.

**2022/06/13)** budgie-screensaver-5.0.2 and budgie-control-center-1.0.2 are added. Updated readme with latest changes on my todo list.

**2022/04/09)** budgie-desktop-10.6.1, budgie-screensaver-5.0.1, budgie-meta-10.6.1, budgie-control-center-1.0.1 are all added. Appstream updated with new ~ppc keyword.

**2022/04/06)** budgie-desktop-10.5.3-r2 and budgie-desktop-view-1.1.1 are made stable. Readme updated to clarify some stuff regarding keywords.

**2022/03/15)** budgoe-desktop-10.6, budgie-screensaver-5.0, budgie-extras-1.4.0 and budgie-desktop-view-1.2 have been added. budgie-extras-1.2.0 has been removed.

**2022/01/17)** budgie-desktop-10.5.3-r1 added with mutter 9 support for those running unstable gnome41.3+ version. Removed old version of budgie-desktop. Budgie-extras-1.3.0 made stable.

**2021/12/15)** Budgie-desktop and budgie-screensaver been made stable due to not getting any reports. Budgie-extras will be set to stable later mid january if nothing changes. At the same time budgie-desktop version 10.5.2 will be removed as it has become obsolete.

**: Unstable/stable refers to keywords in regards to e.g. x86/amd64 vs ~x86/~amd64 !

## Notes:

1) Absolute latest versions are being added as unstable outside the current meta build till budgie-backgrounds is done and a budgie-extras-1.5 is released. If you want these versions already you can do so but only through unmasking them with ~xxxxx keywords (what your system uses). 

2) ~arm and ~arm64 keywords added to a number of ebuilds (mostly those in meta) for testing purposes. Since budgie does an ARM tweak tool separately. Do let me know if anything comes up with this or if stuff don't work.

3) If anything comes up feel free to contact me by making an issue. I will handle it as soon as I can.

4) If you want a specific applet/software/theme/etc that is budgie-desktop related feel free to make a request, I will see what I can do to get it added to the overlay.

5) If there is an applet/software/theme you want let me know with a link and I will see if I can add it in the overlay for you.

6) I will keep appstream updated in sync with the main line gentoo tree. This usually happens within a few days at most from any mainline update.

### Possible Todo's:

- (medium) remove updates into a changelog file instead, getting to big, already had to summarize. Split off this section as well.
- (high) Keep an eye on budgie-extras and below todo's with the upcoming 1.5 release (it's in beta right now, so I rather wait that out for now..)
- (high) Look into budgie-backgrounds which is new.
- (high) After above todo is done also make a new meta file including budgie-backgrounds and budgie-extras 1.5.
- (high) Check all dependencies properly of budgie-extras prior to making all of latest versions that fall under the meta ebuild stable. <-- now for 1.5 stated.
- (unlikely) Make a separate document for further tweaks of budgie-desktop if wanted. (e.g. not showing nm-applet tray icon if using the network applet from budgie-extras)
- (unlikley) Look into specific budgie themes maybe.
