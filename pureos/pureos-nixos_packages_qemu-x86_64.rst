This file is for broadly mapping PureOS packages for the Librem5 to NixOS
packages, sifting out Debian-specific packages, working out what's needed when
there's no direct equivalent and identifying missing ones that will need NixOS
packaging and building.

Once initially sifted, issues will be raised to manage what ever work results
from this.

Comparison has been made using `nix-locate` on NixOS and `apt-file` on PureOS.


Debian Specific:
----------------

adduser
apt
apt-utils
base-files
base-passwd
build-essential
dconf-gsettings-backend
dconf-service
debconf
debconf-i18n
debian-archive-keyring
debianutils
desktop-base
dpkg
dpkg-dev
gen-sshd-host-keys
genisoimage
ifupdown
libapt-inst2.0
libapt-pkg5.0
libdebconfclient0       0.249
libdpkg-perl            1.19.7         Dpkg perl modules
libegl1-mesa            18.3.6-2pureos+librem5.3~118051.gbp615480   transitional dummy package


No Direct Equivalent:
---------------------

libdevmapper-event1.02.1  2:1.02.155-3

binutils-common:amd64
binutils-x86-64-linux-gnu
bsdmainutils
bsdutils
colord-data
cpp
cpp-8
dictionaries-common
emacsen-common
epiphany-browser-data
evince-common
evolution-data-server-common
folks-common: used folks instead
fontconfig-config
g++: used gcc8 instead
g++-8: used gcc8 instead
gcc-8-base:amd64: used gcc8 instead
gdbm-l10n
gir1.2-accountsservice-1.0
gir1.2-atk-1.0:amd64
gir1.2-atspi-2.0:amd64
gir1.2-champlain-0.12:amd64
gir1.2-clutter-1.0:amd64
gir1.2-cogl-1.0:amd64
gir1.2-coglpango-1.0:amd64
gir1.2-freedesktop:amd64
gir1.2-gck-1:amd64
gir1.2-gcr-3:amd64
gir1.2-gdesktopenums-3.0:amd64
gir1.2-gdkpixbuf-2.0:amd64
gir1.2-gdm-1.0:amd64
gir1.2-geoclue-2.0:amd64
gir1.2-geocodeglib-1.0:amd64
gir1.2-gfbgraph-0.2:amd64
gir1.2-glib-2.0:amd64
gir1.2-gnomebluetooth-1.0:amd64
gir1.2-gnomedesktop-3.0:amd64
gir1.2-goa-1.0:amd64
gir1.2-gtk-3.0:amd64
gir1.2-gtkchamplain-0.12:amd64
gir1.2-gtkclutter-1.0:amd64
gir1.2-gweather-3.0:amd64
gir1.2-harfbuzz-0.0:amd64
gir1.2-ibus-1.0:amd64
gir1.2-javascriptcoregtk-4.0:amd64
gir1.2-json-1.0:amd64
gir1.2-mutter-3:amd64
gir1.2-nm-1.0:amd64
gir1.2-nma-1.0:amd64
gir1.2-notify-0.7:amd64
gir1.2-pango-1.0:amd64
gir1.2-polkit-1.0
gir1.2-rest-0.7
gir1.2-rsvg-2.0:amd64
gir1.2-secret-1:amd64
gir1.2-soup-2.4:amd64
gir1.2-upowerglib-1.0:amd64
gir1.2-webkit2-4.0:amd64
git-man
glib-networking-common
glib-networking-services
gnome-control-center-data
gnome-session-bin
gnome-session-common
gnome-settings-daemon-common
gnome-shell-common
gnome-terminal-data
gnupg-l10n
gnupg-utils
gpg
gpg-agent
gpg-wks-client
gpg-wks-server
gpgconf
gpgsm
gpgv
grub-pc
grub-pc-bin
grub2-common
init
init-system-helpers
initramfs-tools
initramfs-tools-core
libatk-bridge2.0-dev
libatk1.0-data
libatk1.0-dev
libatspi2.0-dev
libavahi-glib1 - need to check avahi package supports this.
libavcodec58 - Pretty sure this is covered in ffmpeg-full
libavresample4 - Pretty sure this is covered in ffmpeg-full
libavutil56 - Pretty sure this is covered in ffmpeg-full
libbinutils  2.31.1-16 - Pretty sure this is covered in binutils
libblkid-dev  2.33.1-0.1 - Pretty sure this is covered by utillinux
libblkid1  2.33.1-0.1 - Pretty sure this is covered by utillinux
libbluetooth3  5.50-1 - Pretty sure this is covered by bluezFull
libboost-atomic1.67.0  1.67.0-13 - Provided by boost
libboost-chrono1.67.0  1.67.0-13 - Provided by boost
libboost-date-time1.67.0      1.67.0-13  - Provided by boost
libboost-filesystem1.67.0     1.67.0-13  - Provided by boost
libboost-system1.67.0         1.67.0-13  - Provided by boost
libboost-thread1.67.0         1.67.0-13  - Provided by boost
libc-dev-bin                  2.28-10    - Provided by glibc
libc-l10n                     2.28-10    - Provided by glibc
libc6                         2.28-10    - Provided by glibc
libc6-dev                     2.28-10    - Provided by glibc
libcairo-gobject2             1.16.0-4   - Provided by cairo
libcairo-script-interpreter2  1.16.0-4   - Provided by cairo
libcairo2                     1.16.0-4   - Provided by cairo
libcairo2-dev                 1.16.0-4   - Provided by cairo.dev
libcamel-1.2-62               3.30.5-1   - Provided by evolution-data-server
libcanberra-pulse             0.30-7     - Provided by libcanberra_gtk3
libcanberra0                  0.30-7     - Provided by libcanberra_gtk3
libcap2                       1:2.25-2   - Provided by libcap.lib
libcap2-bin                   1:2.25-2   - Provided by libcap
libcc1-0                      8.3.0-6    - Pretty sure this is provided by gcc-arm-embedded
libchamplain-gtk-0.12-0       0.12.16-3  - Provided by libchamplain
libcheese-gtk25               3.31.90-1  - Provided by gnome3.cheese
libcheese8                    3.31.90-1  - Provided by gnome3.cheese
libclutter-gst-3.0-0          3.0.26-2   - Provided by clutter-gst
libcogl-pango20               1.22.2-6   - Provided by cogl
libcogl-path20                1.22.2-6   - Provided by cogl
libcogl20                     1.22.2-6   - Provided by cogl
libcolord2                    1.4.3-4    - Provided by colord
libcolorhug2                  1.4.3-4    - Provided by colord
libcom-err2                   1.44.5-1   - Provided by e2fsprogs
libcups2                      2.2.10-6   - Provided by cups.lib
libcupsimage2                 2.2.10-6   - Provided by cups.lib
libcurl3-gnutls               7.64.0-4   - Possibly provided by gnutls


Missing:
--------
calls                        0.0.1~184.gbp2f82dc   Make and receive PSTN phone calls
chatty                       0.0.8~441.gbpc6d93c   XMPP and SMS messaging
cloud-initramfs-growroot     0.18.debian7          automatically resize the root partition on first boot
dmeventd                     2:1.02.155-3          Linux Kernel Device Mapper event daemon
fbset                        2.1-30                framebuffer device maintenance program
fonts-quicksand              0.2016-2              sans-serif font with round attributes
haegtesse                    0.0.2~24.gbp74b46e    A daemon to transfer audio data betwem a modem and PulseAudio
hoichess                     0.22.0-1              xboard compatible chess engine to play chess with
libayatana-appindicator3-1   0.5.3-4               Ayatana Application Indicators (GTK-3+ version)
libayatana-ido3-0.4-0        0.4.4-1               Widgets and other objects used for Ayatana Indicators
libayatana-indicator3-7      0.6.2-3               panel indicator applet - shared library (GTK-3+ variant)
libcrystalhd3                1:0.0~git20110715.fdd2f19-13  Crystal HD Video Decoder (shared library)
libdatrie1                   0.2.12-2  Double-array trie library
libdca0                      0.0.6-1   decoding library for DTS Coherent Acoustics streams
libdns-export1104            1:9.11.5.P4+dfsg-5.1  Exported DNS Shared Library


NixOS Package      Version             PureOS Package      Version
==================================================================

Problems:
=========

Needs Upgrading:
----------------
alsaPlugins        1.1.6               alsa-utils          1.1.8-2
aspell             0.60.6.1            aspell              0.60.7~20110707+
glibc              2.27      > 2.28
gnome3.cheese      3.30.0    > 3.31.90
chromaprint        1.3.2     > 1.4.3
codec2             0.8.0     > 0.8.1
colord             1.4.2     > 1.4.3
cryptsetup         2.0.6     > 2.1.0
dbus_libs          1.12.12             dbus                1.12.16-1
dbus_libs          1.12.12             dbus-user-session   1.12.16-1
dbus_libs.lib      1.12.12             dbus-x11            1.12.16-1
dbus_libs.dev      1.12.12   > 1.12.16
devicemapper       2.03.01             dmsetup             2:1.02.155-3
devicemapper       2.03.01             lvm2                2.03.02-3
devicemapper       2.03.01             libdevmapper1.02.1  2:1.02.155-3
djvulibre          3.5.27              libdjvulibre-text   3.5.27.1-10
djvulibre          3.5.27              libdjvulibre21      3.5.27.1-10
gnome3.gtk         3.24.5              gtk-update-icon-cache   3.24.8+52246+git23fb8e495d-1pureos0
libdvdread         6.0.0               libdvdread4         6.0.1-1
libedit            20180525-3.1        libedit2            3.1-20181209-1
libGLdriver.drivers  18.3.4            libegl-mesa0        18.3.6-2pureos+librem5.3~118051.gbp615480
libglvnd           1.0.0               libegl1             1.1.0-1
libGL_driver.dev   18.3.4              libegl1-mesa-dev    18.3.6-2pureos+librem5.3~118051.gbp615480



OK:
===

accountsservice
acl
acpid
adwaita-icon-theme
alsa-utils
apg
aspellDicts.en     2018.04.16-0        aspell-en           2018.04.16-0-1
bash_5
bash-completion
binutils
bluezFull       5.50
bubblewrap
bzip2
cacert
cheese-common
cloud-utils        0.30                cloud-guest-utils   0.29
cloud-utils        0.30                cloud-image-utils   0.29
colord
coreutils
cpio
cron
dash
gnome3.dconf-editor
desktop-file-utils
dtc
diffutils
dirmngr
dmidecode
dosfstools
e2fsprogs
edid-decode
epiphany
evince
evolution-data-server
evtest
fbida
unixtools.fdisk
file
findutils
flatpak
folks
fontconfig
cantarell-fonts
dejavu_fonts
lato
fuse
gcc8
gcr
gdb
geoclue2
gettext
git
gnome3.gjs
gnome3.glib-networking
gnome3.gnome-backgrounds
gnome3.gnome-calendar
gnome3.gnome-chess
gnome3.gnome-contacts
gnome3.gnome-control-center
gnome3.gnome-desktop
gnome3.gnome-keyring
gnome3.gnome-maps
gnome3.gnome-online-accounts
gnome3.gnome-session
gnome3.gnome-settings-daemon
gnome3.gnome-shell
gnome3.gnome-terminal
gnome-themes-extra
gnome3.gnome-tweaks
gnupg
gnugrep
grub2
gnome3.gsettings-desktop-schemas
clutter-gst
gsettings_desktop_schemas  3.28.1      gsettings-desktop-schemas-dev  3.28.1-1
gst_all_1.gst-plugins-bad
gst_all_1.gst-plugins-base
gst_all_1.gst-plugins-good
gst_all_1.gstreamer
gzip
hicolor-icon-theme
hostname
i2c-tools
icu63
iproute
iptables
iputils
dhcp
iso-codes
kbd
klibc-utils
kmod
kmscube
less
aalib
acl
libaio
libaom
libapparmor
appstream-glib
libarchive
libargon2
alsaLib           1.1.8
gcc8               8.3.0               libasan5            8.3.0-6
libass            0.14.0
libassuan         2.5.2
libasyncns        0.8
gcc8               8.3.0               libatomic1          8.3.0-6
at-spi2-atk       2.30.0
atk               2.30.0
attr              2.4.48
audit             2.8.4
avahi             0.7
ffmpeg-full       4.1.3
babeltrace1       1.5.6
utillinux         2.33.1
boost             1.67_0
brotli            1.0.7
libbs2b0          3.1.0
libbsd0           0.9.1
bzip2             1.0.6
libcaca           0.99.19
cairo             1.16.0
libcanberra_gtk3  0.30
libcap.lib        2.26
libcap_ng         0.7.9
libcap            2.26
gcc-arm-embedded  8-2018-q4
cdparanoia        3.10.2
libchamplain      0.12.16
clutter            1.26.2
clutter_gtk        1.8.4
cogl               1.22.2
colord-gtk         0.1.26
e2fsprog           1.44.5
cracklib           2.9.6
gnome3.libcroco    0.6.12
cups.lib           2.2.10
gnome3.libdazzle   3.30.2
db                 5.3.28
dbus-glib          0.110
libdbusmenu-glib   16.04
libdbusmenu-gtk3   16.04
libdc1394-22       2.2.5
gnome3.dconf.lib   0.30.1              libdconf1           0.30.1-2
libde265           1.0.3               libde265-0          1.0.3-1+b1
libdrm             2.4.97              libdrm-amdgpu1      2.4.97-1
libdrm             2.4.97              libdrm-common       2.4.97-1
libdrm             2.4.97              libdrm-dev          2.4.97-1
libdrm             2.4.97              libdrm-intel1       2.4.97-1

libdrm             2.4.97              libdrm-radeon1      2.4.97-1
libdrm             2.4.97              libdrm2             2.4.97-1
libdv              1.0.0               libdv4              1.0.0-12
libdvdnav          6.0.0               libdvdnav4          6.0.0-1
elfutils           0.176               libdw1              0.176-1.1
evolution_data_server  3.30.5          libebackend-1.2-10  3.30.5-1
evolution_data_server  3.30.5          libebook-1.2-19     3.30.5-1
evolution_data_server  3.30.5          libebook-contacts-1.2-2  3.30.5-1
evolution_data_server  3.30.5          libecal-1.2-19      3.30.5-1
evolution_data_server  3.30.5          libedata-book-1.2-25  3.30.5-1
evolution_data_server  3.30.5          libedata-cal-1.2-29  3.30.5-1
evolution_data_server  3.30.5          libedataserver-1.2-23  3.30.5-1
evolution_data_server  3.30.5          libedataserverui-1.2-2  3.30.5-1
efivar             37                  libefiboot1         37-2
efivar             37                  libefivar1          37-2
ii  libelf1:amd64                        0.176-1.1                                      amd64        library to read and write ELF files
ii  libenchant1c2a:amd64                 1.6.0-11.1+b1                                  amd64        Wrapper library for various spell checker engines (runtime libs)
ii  libepoxy-dev:amd64                   1.5.3-0.1                                      amd64        OpenGL function pointer management library- development
ii  libepoxy0:amd64                      1.5.3-0.1                                      amd64        OpenGL function pointer management library
ii  liberror-perl                        0.17027-2                                      all          Perl module for error/exception handling in an OO-ish way
ii  libestr0:amd64                       0.1.10-2.1                                     amd64        Helper functions for handling strings (lib)
ii  libevdev-dev:amd64                   1.6.0+dfsg-1                                   amd64        wrapper library for evdev devices - development files
ii  libevdev2:amd64                      1.6.0+dfsg-1                                   amd64        wrapper library for evdev devices
ii  libevdocument3-4:amd64               3.30.2-3                                       amd64        Document (PostScript, PDF) rendering library
ii  libevview3-3:amd64                   3.30.2-3                                       amd64        Document (PostScript, PDF) rendering library - Gtk+ widgets
ii  libexif12:amd64                      0.6.21-5.1                                     amd64        library to parse EXIF files
ii  libexpat1:amd64                      2.2.6-2                                        amd64        XML parsing C library - runtime library
ii  libexpat1-dev:amd64                  2.2.6-2                                        amd64        XML parsing C library - development kit
ii  libext2fs2:amd64                     1.44.5-1                                       amd64        ext2/ext3/ext4 file system libraries
ii  libfaad2:amd64                       2.8.8-3                                        amd64        freeware Advanced Audio Decoder - runtime files
ii  libfarstream-0.2-5:amd64             0.2.8-4.1                                      amd64        Audio/Video communications framework: core library
ii  libfastjson4:amd64                   0.99.8-2                                       amd64        fast json library for C
ii  libfdisk1:amd64                      2.33.1-0.1                                     amd64        fdisk partitioning library
ii  libffi-dev:amd64                     3.2.1-9                                        amd64        Foreign Function Interface library (development files)
ii  libffi6:amd64                        3.2.1-9                                        amd64        Foreign Function Interface library runtime
ii  libfftw3-double3:amd64               3.3.8-2                                        amd64        Library for computing Fast Fourier Transforms - Double precision
ii  libfftw3-single3:amd64               3.3.8-2                                        amd64        Library for computing Fast Fourier Transforms - Single precision
ii  libflac8:amd64                       1.3.2-3                                        amd64        Free Lossless Audio Codec - runtime C library
ii  libflite1:amd64                      2.1-release-3                                  amd64        Small run-time speech synthesis engine - shared libraries
ii  libfluidsynth1:amd64                 1.1.11-1                                       amd64        Real-time MIDI software synthesizer (runtime library)
ii  libfolks-eds25:amd64                 0.11.4-1+b2                                    amd64        Evolution-data-server backend for libfolks
ii  libfolks25:amd64                     0.11.4-1+b2                                    amd64        library to aggregates people into metacontacts
ii  libfontconfig1:amd64                 2.13.1-2                                       amd64        generic font configuration library - runtime
ii  libfontconfig1-dev:amd64             2.13.1-2                                       amd64        generic font configuration library - development
ii  libfontenc1:amd64                    1:1.1.3-1+b2                                   amd64        X11 font encoding library
ii  libfreetype6:amd64                   2.9.1-3                                        amd64        FreeType 2 font engine, shared library files
ii  libfreetype6-dev:amd64               2.9.1-3                                        amd64        FreeType 2 font engine, development files
ii  libfribidi-dev:amd64                 1.0.5-3.1                                      amd64        Development files for FreeBidi library
ii  libfribidi0:amd64                    1.0.5-3.1                                      amd64        Free Implementation of the Unicode BiDi algorithm
ii  libfuse2:amd64                       2.9.9-1                                        amd64        Filesystem in Userspace (library)
ii  libgadu3                             1:1.12.2-3                                     amd64        Gadu-Gadu protocol library - runtime files
ii  libgbm-dev:amd64                     18.3.6-2pureos+librem5.3~118051.gbp615480      amd64        generic buffer management API -- development files
ii  libgbm1:amd64                        18.3.6-2pureos+librem5.3~118051.gbp615480      amd64        generic buffer management API -- runtime
ii  libgcc-8-dev:amd64                   8.3.0-6                                        amd64        GCC support library (development files)
ii  libgcc1:amd64                        1:8.3.0-6                                      amd64        GCC support library
ii  libgck-1-0:amd64                     3.28.1-1                                       amd64        Glib wrapper library for PKCS#11 - runtime
ii  libgcr-base-3-1:amd64                3.28.1-1                                       amd64        Library for Crypto related tasks
ii  libgcr-ui-3-1:amd64                  3.28.1-1                                       amd64        Library for Crypto UI related tasks
ii  libgcrypt20:amd64                    1.8.4-5                                        amd64        LGPL Crypto library - runtime library
ii  libgd3:amd64                         2.2.5-5.2                                      amd64        GD Graphics Library
ii  libgdata-common                      0.17.9-3                                       all          Library for accessing GData webservices - common data files
ii  libgdata22:amd64                     0.17.9-3                                       amd64        Library for accessing GData webservices - shared libraries
ii  libgdbm-compat4:amd64                1.18.1-4                                       amd64        GNU dbm database routines (legacy support runtime version)
ii  libgdbm6:amd64                       1.18.1-4                                       amd64        GNU dbm database routines (runtime version)
ii  libgdk-pixbuf2.0-0:amd64             2.38.1+dfsg-1                                  amd64        GDK Pixbuf library
ii  libgdk-pixbuf2.0-bin                 2.38.1+dfsg-1                                  amd64        GDK Pixbuf library (thumbnailer)
ii  libgdk-pixbuf2.0-common              2.38.1+dfsg-1                                  all          GDK Pixbuf library - data files
ii  libgdk-pixbuf2.0-dev:amd64           2.38.1+dfsg-1                                  amd64        GDK Pixbuf library (development files)
ii  libgdm1                              3.30.2-3                                       amd64        GNOME Display Manager (shared library)
ii  libgee-0.8-2:amd64                   0.20.1-2                                       amd64        GObject based collection and utility library
ii  libgeoclue-2-0:amd64                 2.5.2-1                                        amd64        convenience library to interact with geoinformation service
ii  libgeocode-glib0:amd64               3.26.1-1                                       amd64        geocoding and reverse geocoding GLib library using Nominatim
ii  libgfbgraph-0.2-0:amd64              0.2.3-3                                        amd64        GObject library for Facebook Graph API
ii  libgif7:amd64                        5.1.4-3                                        amd64        library for GIF images (library)
ii  libgirepository-1.0-1:amd64          1.58.3-2                                       amd64        Library for handling GObject introspection data (runtime library)
ii  libgjs0g                             1.54.3-1                                       amd64        Mozilla-based javascript bindings for the GNOME platform
ii  libgl1:amd64                         1.1.0-1                                        amd64        Vendor neutral GL dispatch library -- legacy GL support
ii  libgl1-mesa-dev:amd64                18.3.6-2pureos+librem5.3~118051.gbp615480      amd64        free implementation of the OpenGL API -- GLX development files
ii  libgl1-mesa-dri:amd64                18.3.6-2pureos+librem5.3~118051.gbp615480      amd64        free implementation of the OpenGL API -- DRI modules
ii  libglapi-mesa:amd64                  18.3.6-2pureos+librem5.3~118051.gbp615480      amd64        free implementation of the GL API -- shared library
ii  libgles1:amd64                       1.1.0-1                                        amd64        Vendor neutral GL dispatch library -- GLESv1 support
ii  libgles2:amd64                       1.1.0-1                                        amd64        Vendor neutral GL dispatch library -- GLESv2 support
ii  libgles2-mesa-dev:amd64              18.3.6-2pureos+librem5.3~118051.gbp615480      amd64        free implementation of the OpenGL|ES 2.x API -- development files
ii  libglib2.0-0:amd64                   2.58.3-2                                       amd64        GLib library of C routines
ii  libglib2.0-bin                       2.58.3-2                                       amd64        Programs for the GLib library
ii  libglib2.0-data                      2.58.3-2                                       all          Common files for GLib library
ii  libglib2.0-dev:amd64                 2.58.3-2                                       amd64        Development files for the GLib library
ii  libglib2.0-dev-bin                   2.58.3-2                                       amd64        Development utilities for the GLib library
ii  libglvnd-core-dev:amd64              1.1.0-1                                        amd64        Vendor neutral GL dispatch library -- core development files
ii  libglvnd-dev:amd64                   1.1.0-1                                        amd64        Vendor neutral GL dispatch library -- development files
ii  libglvnd0:amd64                      1.1.0-1                                        amd64        Vendor neutral GL dispatch library
ii  libglx-mesa0:amd64                   18.3.6-2pureos+librem5.3~118051.gbp615480      amd64        free implementation of the OpenGL API -- GLX vendor library
ii  libglx0:amd64                        1.1.0-1                                        amd64        Vendor neutral GL dispatch library -- GLX support
ii  libgme0:amd64                        0.6.2-1                                        amd64        Playback library for video game music files - shared library
ii  libgmp10:amd64                       2:6.1.2+dfsg-4                                 amd64        Multiprecision arithmetic library
ii  libgnome-bluetooth13:amd64           3.28.2-3                                       amd64        GNOME Bluetooth tools - support library
ii  libgnome-desktop-3-17:amd64          3.30.2.1-2                                     amd64        Utility library for loading .desktop files - runtime files
ii  libgnome-desktop-3-dev:amd64         3.30.2.1-2                                     amd64        Utility library for loading .desktop files - development files
ii  libgnutls30:amd64                    3.6.7-4                                        amd64        GNU TLS library - main runtime library
ii  libgoa-1.0-0b:amd64                  3.30.1-2                                       amd64        library for GNOME Online Accounts
ii  libgoa-1.0-common                    3.30.1-2                                       all          library for GNOME Online Accounts - common files
ii  libgoa-backend-1.0-1:amd64           3.30.1-2                                       amd64        backend library for GNOME Online Accounts
ii  libgomp1:amd64                       8.3.0-6                                        amd64        GCC OpenMP (GOMP) support library
ii  libgpg-error0:amd64                  1.35-1                                         amd64        GnuPG development runtime library
ii  libgpgme11:amd64                     1.12.0-6                                       amd64        GPGME - GnuPG Made Easy (library)
ii  libgphoto2-6:amd64                   2.5.22-3                                       amd64        gphoto2 digital camera library
ii  libgphoto2-port12:amd64              2.5.22-3                                       amd64        gphoto2 digital camera port library
ii  libgpm2:amd64                        1.20.7-5                                       amd64        General Purpose Mouse - shared library
ii  libgraphite2-3:amd64                 1.3.13-7                                       amd64        Font rendering engine for Complex Scripts -- library
ii  libgraphite2-dev:amd64               1.3.13-7                                       amd64        Development files for libgraphite2
ii  libgrilo-0.3-0:amd64                 0.3.7-1                                        amd64        Framework for discovering and browsing media - Shared libraries
ii  libgs9:amd64                         9.27~dfsg-2                                    amd64        interpreter for the PostScript language and for PDF - Library
ii  libgs9-common                        9.27~dfsg-2                                    all          interpreter for the PostScript language and for PDF - common files
ii  libgsm1:amd64                        1.0.18-2                                       amd64        Shared libraries for GSM speech compressor
ii  libgsound0:amd64                     1.0.2-4                                        amd64        small library for playing system sounds
ii  libgspell-1-1:amd64                  1.6.1-2                                        amd64        spell-checking library for GTK+ applications
ii  libgspell-1-common                   1.6.1-2                                        all          libgspell architecture-independent files
ii  libgssapi-krb5-2:amd64               1.17-3                                         amd64        MIT Kerberos runtime libraries - krb5 GSS-API Mechanism
ii  libgssdp-1.0-3:amd64                 1.0.2-4                                        amd64        GObject-based library for SSDP
ii  libgstreamer-gl1.0-0:amd64           1.14.4-2                                       amd64        GStreamer GL libraries
ii  libgstreamer-plugins-bad1.0-0:amd64  1.14.4-1+b1                                    amd64        GStreamer libraries from the "bad" set
ii  libgstreamer-plugins-base1.0-0:amd64 1.14.4-2                                       amd64        GStreamer libraries from the "base" set
ii  libgstreamer1.0-0:amd64              1.14.4-1                                       amd64        Core GStreamer libraries and elements
ii  libgtk-3-0:amd64                     3.24.8+52246+git23fb8e495d-1pureos0            amd64        GTK+ graphical user interface library
ii  libgtk-3-common                      3.24.8+52246+git23fb8e495d-1pureos0            all          common files for the GTK+ graphical user interface library
ii  libgtk-3-dev:amd64                   3.24.8+52246+git23fb8e495d-1pureos0            amd64        development files for the GTK+ library
ii  libgtop-2.0-11:amd64                 2.38.0-4                                       amd64        gtop system monitoring library (shared)
ii  libgtop2-common                      2.38.0-4                                       all          gtop system monitoring library (common)
ii  libgudev-1.0-0:amd64                 232-2                                          amd64        GObject-based wrapper library for libudev
ii  libgupnp-1.0-4:amd64                 1.0.3-3                                        amd64        GObject-based library for UPnP
ii  libgupnp-igd-1.0-4:amd64             0.2.5-3                                        amd64        library to handle UPnP IGD port mapping
ii  libgusb2:amd64                       0.3.0-1                                        amd64        GLib wrapper around libusb1
ii  libgweather-3-15:amd64               3.28.2-2                                       amd64        GWeather shared library
ii  libgweather-common                   3.28.2-2                                       all          GWeather common files
ii  libgxps2:amd64                       0.3.1-1                                        amd64        handling and rendering XPS documents (library)
ii  libhandy-0.0-0:amd64                 0.0.11~509.gbpe1c500                           amd64        Library with GTK widgets for mobile phones
ii  libharfbuzz-dev:amd64                2.3.1-1                                        amd64        Development files for OpenType text shaping engine
ii  libharfbuzz-gobject0:amd64           2.3.1-1                                        amd64        OpenType text shaping engine ICU backend (GObject library)
ii  libharfbuzz-icu0:amd64               2.3.1-1                                        amd64        OpenType text shaping engine ICU backend
ii  libharfbuzz0b:amd64                  2.3.1-1                                        amd64        OpenType text shaping engine (shared library)
ii  libhogweed4:amd64                    3.4.1-1                                        amd64        low level cryptographic library (public-key cryptos)
ii  libhunspell-1.7-0:amd64              1.7.0-2                                        amd64        spell checker and morphological analyzer (shared library)
ii  libhyphen0:amd64                     2.8.8-7                                        amd64        ALTLinux hyphenation library - shared library
ii  libi2c0:amd64                        4.1-1                                          amd64        userspace I2C programming library
ii  libibus-1.0-5:amd64                  1.5.19-4                                       amd64        Intelligent Input Bus - shared library
ii  libical3:amd64                       3.0.4-3                                        amd64        iCalendar library implementation in C (runtime)
ii  libice-dev:amd64                     2:1.0.9-2                                      amd64        X11 Inter-Client Exchange library (development headers)
ii  libice6:amd64                        2:1.0.9-2                                      amd64        X11 Inter-Client Exchange library
ii  libicu-dev:amd64                     63.1-6                                         amd64        Development files for International Components for Unicode
ii  libicu63:amd64                       63.1-6                                         amd64        International Components for Unicode
ii  libidn11:amd64                       1.33-2.2                                       amd64        GNU Libidn library, implementation of IETF IDN specifications
ii  libidn2-0:amd64                      2.0.5-1                                        amd64        Internationalized domain names (IDNA2008/TR46) library
ii  libiec61883-0:amd64                  1.2.0-3                                        amd64        partial implementation of IEC 61883 (shared lib)
ii  libieee1284-3:amd64                  0.2.11-13                                      amd64        cross-platform library for parallel port access
ii  libijs-0.35:amd64                    0.35-14                                        amd64        IJS raster image transport protocol: shared library
ii  libilmbase23:amd64                   2.2.1-2                                        amd64        several utility libraries from ILM used by OpenEXR
ii  libimobiledevice6:amd64              1.2.1~git20181030.92c5462-1                    amd64        Library for communicating with iPhone and other Apple devices
ii  libinput-bin                         1.12.6-2                                       amd64        input device management and event handling library - udev quirks
ii  libinput-dev:amd64                   1.12.6-2                                       amd64        input device management and event handling library - development files
ii  libinput10:amd64                     1.12.6-2                                       amd64        input device management and event handling library - shared library
ii  libip4tc0:amd64                      1.8.2-4                                        amd64        netfilter libip4tc library
ii  libip6tc0:amd64                      1.8.2-4                                        amd64        netfilter libip6tc library
ii  libipt2                              2.0-2                                          amd64        Intel Processor Trace Decoder Library
ii  libiptc0:amd64                       1.8.2-4                                        amd64        netfilter libiptc library
ii  libisc-export1100:amd64              1:9.11.5.P4+dfsg-5.1                           amd64        Exported ISC Shared Library
ii  libisl19:amd64                       0.20-2                                         amd64        manipulating sets and relations of integer points bounded by linear constraints
ii  libitm1:amd64                        8.3.0-6                                        amd64        GNU Transactional Memory Library
ii  libiw30:amd64                        30~pre9-13                                     amd64        Wireless tools - library
ii  libjack-jackd2-0:amd64               1.9.12~dfsg-2                                  amd64        JACK Audio Connection Kit (libraries)
ii  libjansson4:amd64                    2.12-1                                         amd64        C library for encoding, decoding and manipulating JSON data
ii  libjavascriptcoregtk-4.0-18:amd64    2.24.3+1320+git923502c69-1pureos0              amd64        JavaScript engine library from WebKitGTK
ii  libjbig0:amd64                       2.1-3.1+b2                                     amd64        JBIGkit libraries
ii  libjbig2dec0:amd64                   0.16-1                                         amd64        JBIG2 decoder library - shared libraries
ii  libjim0.77:amd64                     0.77+dfsg0-3                                   amd64        small-footprint implementation of Tcl - shared library
ii  libjpeg62-turbo:amd64                1:1.5.2-2+b1                                   amd64        libjpeg-turbo JPEG runtime library
ii  libjson-c3:amd64                     0.12.1+ds-2                                    amd64        JSON manipulation library - shared library
ii  libjson-glib-1.0-0:amd64             1.4.4-2                                        amd64        GLib JSON manipulation library
ii  libjson-glib-1.0-common              1.4.4-2                                        all          GLib JSON manipulation library (common files)
ii  libk5crypto3:amd64                   1.17-3                                         amd64        MIT Kerberos runtime libraries - Crypto Library
ii  libkate1:amd64                       0.4.1-9                                        amd64        Codec for karaoke and text encapsulation
ii  libkeyutils1:amd64                   1.6-6                                          amd64        Linux Key Management Utilities (library)
ii  libklibc:amd64                       2.0.6-1                                        amd64        minimal libc subset for use with initramfs
ii  libkmod2:amd64                       26-1                                           amd64        libkmod shared library
ii  libkpathsea6:amd64                   2018.20181218.49446-1                          amd64        TeX Live: path search library for TeX (runtime part)
ii  libkrb5-3:amd64                      1.17-3                                         amd64        MIT Kerberos runtime libraries
ii  libkrb5support0:amd64                1.17-3                                         amd64        MIT Kerberos runtime libraries - Support library
ii  libksba8:amd64                       1.3.5-2                                        amd64        X.509 and CMS support library
ii  liblcms2-2:amd64                     2.9-3                                          amd64        Little CMS 2 color management library
ii  libldap-2.4-2:amd64                  2.4.47+dfsg-3                                  amd64        OpenLDAP libraries
ii  libldap-common                       2.4.47+dfsg-3                                  all          OpenLDAP common files for libraries
ii  libldb1:amd64                        2:1.5.1+really1.4.6-3                          amd64        LDAP-like embedded database - shared library
ii  liblilv-0-0:amd64                    0.24.2~dfsg0-2                                 amd64        library for simple use of LV2 plugins
ii  libllvm7:amd64                       1:7.0.1-8                                      amd64        Modular compiler and toolchain technologies, runtime library
ii  liblmdb0:amd64                       0.9.22-1                                       amd64        Lightning Memory-Mapped Database shared library
ii  liblocale-gettext-perl               1.07-3+b4                                      amd64        module using libc functions for internationalization in Perl
ii  liblognorm5:amd64                    2.0.5-1                                        amd64        log normalizing library
ii  liblsan0:amd64                       8.3.0-6                                        amd64        LeakSanitizer -- a memory leak detector (runtime)
ii  libltdl7:amd64                       2.4.6-9                                        amd64        System independent dlopen wrapper for GNU libtool
ii  liblua5.2-0:amd64                    5.2.4-1.1+b2                                   amd64        Shared library for the Lua interpreter version 5.2
ii  liblvm2cmd2.03:amd64                 2.03.02-3                                      amd64        LVM2 command library
ii  liblz4-1:amd64                       1.8.3-1                                        amd64        Fast LZ compression algorithm library - runtime
ii  liblzma5:amd64                       5.2.4-1                                        amd64        XZ-format compression library
ii  liblzo2-2:amd64                      2.10-0.1                                       amd64        data compression library
ii  libmagic-mgc                         1:5.35-4                                       amd64        File type determination library using "magic" numbers (compiled magic file)
ii  libmagic1:amd64                      1:5.35-4                                       amd64        Recognize the type of data in a file using "magic" numbers - library
ii  libmariadb3:amd64                    1:10.3.15-1                                    amd64        MariaDB database client library
ii  libmbim-glib4:amd64                  1.18.0-1                                       amd64        Support library to use the MBIM protocol
ii  libmbim-proxy                        1.18.0-1                                       amd64        Proxy to communicate with MBIM ports
ii  libmbim-utils                        1.18.0-1                                       amd64        Utilities to use the MBIM protocol from the command line
ii  libmeanwhile1:amd64                  1.0.2-9                                        amd64        open implementation of the Lotus Sametime Community Client protocol
ii  libmjpegutils-2.1-0                  1:2.1.0+debian-5                               amd64        MJPEG capture/editing/replay and MPEG encoding toolset (library)
ii  libmm-glib0:amd64                    1.10.0-1purple+librem5.3~5953.gbp63c6e1        amd64        D-Bus service for managing modems - shared libraries
ii  libmms0:amd64                        0.6.4-3                                        amd64        MMS stream protocol library - shared library
ii  libmnl0:amd64                        1.0.4-2                                        amd64        minimalistic Netlink communication library
ii  libmodplug1:amd64                    1:0.8.9.0-2                                    amd64        shared libraries for mod music based on ModPlug
ii  libmount-dev:amd64                   2.33.1-0.1                                     amd64        device mounting library - headers and static libraries
ii  libmount1:amd64                      2.33.1-0.1                                     amd64        device mounting library
ii  libmozjs-60-0:amd64                  60.2.3-3                                       amd64        SpiderMonkey JavaScript library
ii  libmp3lame0:amd64                    3.100-2+b1                                     amd64        MP3 encoding library
ii  libmpc3:amd64                        1.1.0-1                                        amd64        multiple precision complex floating-point library
ii  libmpcdec6:amd64                     2:0.1~r495-1+b2                                amd64        MusePack decoder - library
ii  libmpdec2:amd64                      2.4.2-2                                        amd64        library for decimal floating point arithmetic (runtime library)
ii  libmpeg2encpp-2.1-0                  1:2.1.0+debian-5                               amd64        MJPEG capture/editing/replay and MPEG encoding toolset (library)
ii  libmpfr6:amd64                       4.0.2-1                                        amd64        multiple precision floating-point computation
ii  libmpg123-0:amd64                    1.25.10-2                                      amd64        MPEG layer 1/2/3 audio decoder (shared library)
ii  libmplex2-2.1-0                      1:2.1.0+debian-5                               amd64        MJPEG capture/editing/replay and MPEG encoding toolset (library)
ii  libmpx2:amd64                        8.3.0-6                                        amd64        Intel memory protection extensions (runtime)
ii  libmtdev-dev                         1.1.5-1+b1                                     amd64        Multitouch Protocol Translation Library - dev files
ii  libmtdev1:amd64                      1.1.5-1+b1                                     amd64        Multitouch Protocol Translation Library - shared library
ii  libmutter-3-0:amd64                  3.30.2-7                                       amd64        window manager library from the Mutter window manager
ii  libnautilus-extension1a:amd64        3.30.5-2                                       amd64        libraries for nautilus components - runtime version
ii  libncurses6:amd64                    6.1+20181013-2                                 amd64        shared libraries for terminal handling
ii  libncursesw6:amd64                   6.1+20181013-2                                 amd64        shared libraries for terminal handling (wide character support)
ii  libndp0:amd64                        1.6-1+b1                                       amd64        Library for Neighbor Discovery Protocol
ii  libnetfilter-conntrack3:amd64        1.0.7-1                                        amd64        Netfilter netlink-conntrack library
ii  libnettle6:amd64                     3.4.1-1                                        amd64        low level cryptographic library (symmetric and one-way cryptos)
ii  libnewt0.52:amd64                    0.52.20-8                                      amd64        Not Erik's Windowing Toolkit - text mode windowing with slang
ii  libnfnetlink0:amd64                  1.0.1-3+b1                                     amd64        Netfilter netlink library
ii  libnftnl11:amd64                     1.1.2-2                                        amd64        Netfilter nftables userspace API library
ii  libnghttp2-14:amd64                  1.36.0-2                                       amd64        library implementing HTTP/2 protocol (shared library)
ii  libnice10:amd64                      0.1.14-1                                       amd64        ICE library (shared library)
ii  libnl-3-200:amd64                    3.4.0-1                                        amd64        library for dealing with netlink sockets
ii  libnl-genl-3-200:amd64               3.4.0-1                                        amd64        library for dealing with netlink sockets - generic netlink
ii  libnl-route-3-200:amd64              3.4.0-1                                        amd64        library for dealing with netlink sockets - route interface
ii  libnm0:amd64                         1.14.6-2                                       amd64        GObject-based client library for NetworkManager
ii  libnma0:amd64                        1.8.20-1.1                                     amd64        library for wireless and mobile dialogs (libnm version)
ii  libnotify4:amd64                     0.7.7-4                                        amd64        sends desktop notifications to a notification daemon
ii  libnpth0:amd64                       1.6-1                                          amd64        replacement for GNU Pth using system threads
ii  libnspr4:amd64                       2:4.20-1                                       amd64        NetScape Portable Runtime Library
ii  libnss-systemd:amd64                 241-5                                          amd64        nss module providing dynamic user and group name resolution
ii  libnss3:amd64                        2:3.42.1-1                                     amd64        Network Security Service libraries
ii  libnuma1:amd64                       2.0.12-1                                       amd64        Libraries for controlling NUMA policy
ii  liboauth0:amd64                      1.0.3-3                                        amd64        C library implementing OAuth Core 1.0a API (runtime)
ii  libofa0:amd64                        0.9.3-19                                       amd64        library for acoustic fingerprinting
ii  libogg0:amd64                        1.3.2-1+b1                                     amd64        Ogg bitstream library
ii  libopenal-data                       1:1.19.1-1                                     all          Software implementation of the OpenAL audio API (data files)
ii  libopenal1:amd64                     1:1.19.1-1                                     amd64        Software implementation of the OpenAL audio API (shared library)
ii  libopenexr23:amd64                   2.2.1-4.1                                      amd64        runtime files for the OpenEXR image library
ii  libopengl0:amd64                     1.1.0-1                                        amd64        Vendor neutral GL dispatch library -- OpenGL support
ii  libopenjp2-7:amd64                   2.3.0-2                                        amd64        JPEG 2000 image compression/decompression library
ii  libopenmpt0:amd64                    0.4.3-1                                        amd64        module music library based on OpenMPT -- shared library
ii  libopus0:amd64                       1.3-1                                          amd64        Opus codec runtime library
ii  liborc-0.4-0:amd64                   1:0.4.28-3.1                                   amd64        Library of Optimized Inner Loops Runtime Compiler
ii  libostree-1-1:amd64                  2019.1-1                                       amd64        content-addressed filesystem for operating system binaries (library)
ii  libp11-kit0:amd64                    0.23.15-2                                      amd64        library for loading and coordinating access to PKCS#11 modules - runtime
ii  libpam-modules:amd64                 1.3.1-5                                        amd64        Pluggable Authentication Modules for PAM
ii  libpam-modules-bin                   1.3.1-5                                        amd64        Pluggable Authentication Modules for PAM - helper binaries
ii  libpam-runtime                       1.3.1-5                                        all          Runtime support for the PAM library
ii  libpam-systemd:amd64                 241-5                                          amd64        system and service manager - PAM module
ii  libpam0g:amd64                       1.3.1-5                                        amd64        Pluggable Authentication Modules library
ii  libpango-1.0-0:amd64                 1.42.4-6                                       amd64        Layout and rendering of internationalized text
ii  libpango1.0-dev:amd64                1.42.4-6                                       amd64        Development files for the Pango
ii  libpangocairo-1.0-0:amd64            1.42.4-6                                       amd64        Layout and rendering of internationalized text
ii  libpangoft2-1.0-0:amd64              1.42.4-6                                       amd64        Layout and rendering of internationalized text
ii  libpangoxft-1.0-0:amd64              1.42.4-6                                       amd64        Layout and rendering of internationalized text
ii  libpaper1:amd64                      1.1.28                                         amd64        library for handling paper characteristics
ii  libpci3:amd64                        1:3.5.2-1                                      amd64        Linux PCI Utilities (shared library)
ii  libpciaccess0:amd64                  0.14-1                                         amd64        Generic PCI access library for X
ii  libpcre16-3:amd64                    2:8.39-12                                      amd64        Old Perl 5 Compatible Regular Expression Library - 16 bit runtime files
ii  libpcre2-8-0:amd64                   10.32-5                                        amd64        New Perl Compatible Regular Expression Library- 8 bit runtime files
ii  libpcre3:amd64                       2:8.39-12                                      amd64        Old Perl 5 Compatible Regular Expression Library - runtime files
ii  libpcre3-dev:amd64                   2:8.39-12                                      amd64        Old Perl 5 Compatible Regular Expression Library - development files
ii  libpcre32-3:amd64                    2:8.39-12                                      amd64        Old Perl 5 Compatible Regular Expression Library - 32 bit runtime files
ii  libpcrecpp0v5:amd64                  2:8.39-12                                      amd64        Old Perl 5 Compatible Regular Expression Library - C++ runtime files
ii  libpcsclite1:amd64                   1.8.24-1                                       amd64        Middleware to access a smart card using PC/SC (library)
ii  libpeas-1.0-0:amd64                  1.22.0-4                                       amd64        Application plugin library
ii  libpeas-common                       1.22.0-4                                       all          Application plugin library (common files)
ii  libperl5.28:amd64                    5.28.1-6                                       amd64        shared Perl library
ii  libphonenumber7:amd64                7.1.0-5+b4                                     amd64        parsing/formatting/validating phone numbers
ii  libpipewire-0.2-1:amd64              0.2.5-1                                        amd64        libraries for the PipeWire multimedia server
ii  libpixman-1-0:amd64                  0.36.0-1                                       amd64        pixel-manipulation library for X and cairo
ii  libpixman-1-dev:amd64                0.36.0-1                                       amd64        pixel-manipulation library for X and cairo (development files)
ii  libplist3:amd64                      2.0.1~git20190104.3f96731-1                    amd64        Library for handling Apple binary and XML property lists
ii  libpng-dev:amd64                     1.6.36-6                                       amd64        PNG library - development (version 1.6)
ii  libpng16-16:amd64                    1.6.36-6                                       amd64        PNG library - runtime (version 1.6)
ii  libpolkit-agent-1-0:amd64            0.105-25                                       amd64        PolicyKit Authentication Agent API
ii  libpolkit-backend-1-0:amd64          0.105-25                                       amd64        PolicyKit backend API
ii  libpolkit-gobject-1-0:amd64          0.105-25                                       amd64        PolicyKit Authorization API
ii  libpoppler-glib8:amd64               0.71.0-5                                       amd64        PDF rendering library (GLib-based shared library)
ii  libpoppler82:amd64                   0.71.0-5                                       amd64        PDF rendering library
ii  libpopt0:amd64                       1.16-12                                        amd64        lib for parsing cmdline parameters
ii  libprocps7:amd64                     2:3.3.15-2                                     amd64        library for accessing process information from /proc
ii  libprotobuf-c1:amd64                 1.3.1-1+b1                                     amd64        Protocol Buffers C shared library (protobuf-c)
ii  libprotobuf17:amd64                  3.6.1.3-2                                      amd64        protocol buffers C++ library
ii  libproxy1v5:amd64                    0.4.15-5                                       amd64        automatic proxy configuration management library (shared)
ii  libpsl5:amd64                        0.20.2-2                                       amd64        Library for Public Suffix List (shared libraries)
ii  libpthread-stubs0-dev:amd64          0.4-1                                          amd64        pthread stubs not provided by native libc, development files
ii  libpulse-mainloop-glib0:amd64        12.2-4                                         amd64        PulseAudio client libraries (glib support)
ii  libpulse0:amd64                      12.2-4                                         amd64        PulseAudio client libraries
ii  libpulsedsp:amd64                    12.2-4                                         amd64        PulseAudio OSS pre-load library
ii  libpurple0                           2.13.0-2+b1                                    amd64        multi-protocol instant messaging library
ii  libpwquality-common                  1.4.0-3                                        all          library for password quality checking and generation (data files)
ii  libpwquality1:amd64                  1.4.0-3                                        amd64        library for password quality checking and generation
ii  libpython-stdlib:amd64               2.7.16-1                                       amd64        interactive high-level object-oriented language (Python2)
ii  libpython2-stdlib:amd64              2.7.16-1                                       amd64        interactive high-level object-oriented language (Python2)
ii  libpython2.7:amd64                   2.7.16-2                                       amd64        Shared Python runtime library (version 2.7)
ii  libpython2.7-minimal:amd64           2.7.16-2                                       amd64        Minimal subset of the Python language (version 2.7)
ii  libpython2.7-stdlib:amd64            2.7.16-2                                       amd64        Interactive high-level object-oriented language (standard library, version 2.7)
ii  libpython3-stdlib:amd64              3.7.3-1                                        amd64        interactive high-level object-oriented language (default python3 version)
ii  libpython3.7:amd64                   3.7.3-2                                        amd64        Shared Python runtime library (version 3.7)
ii  libpython3.7-minimal:amd64           3.7.3-2                                        amd64        Minimal subset of the Python language (version 3.7)
ii  libpython3.7-stdlib:amd64            3.7.3-2                                        amd64        Interactive high-level object-oriented language (standard library, version 3.7)
ii  libqmi-glib5:amd64                   1.22.0-1.2                                     amd64        Support library to use the Qualcomm MSM Interface (QMI) protocol
ii  libqmi-proxy                         1.22.0-1.2                                     amd64        Proxy to communicate with QMI ports
ii  libqmi-utils                         1.22.0-1.2                                     amd64        Utilities to use the QMI protocol from the command line
ii  libquadmath0:amd64                   8.3.0-6                                        amd64        GCC Quad-Precision Math Library
ii  libquvi-0.9-0.9.3:amd64              0.9.3-1.3                                      amd64        library for parsing video download links (runtime libraries)
ii  libquvi-scripts-0.9                  0.9.20131130-1.1                               all          library for parsing video download links (Lua scripts)
ii  libraw1394-11:amd64                  2.1.2-1+b1                                     amd64        library for direct access to IEEE 1394 bus (aka FireWire)
ii  libreadline5:amd64                   5.2+dfsg-3+b13                                 amd64        GNU readline and history libraries, run-time libraries
ii  libreadline7:amd64                   7.0-5                                          amd64        GNU readline and history libraries, run-time libraries
ii  librem5-base                         3~79.gbp69b17a                                 all          Metapackage for the Librem5
ii  librem5-base-defaults                3~79.gbp69b17a                                 all          Default themes and configuration for the Librem-5
ii  librem5-dev-tools                    3~79.gbp69b17a                                 all          Librem5 development tools
ii  librem5-devkit-check                 0.0.3~167.gbp37e68d                            all          Check script for the librem5-evk (devkit)
ii  librem5-gnome                        3~79.gbp69b17a                                 all          GNOME metapackage for the Librem5
ii  librem5-gnome-base                   3~79.gbp69b17a                                 all          GNOME base metapackage for the Librem5
ii  librem5-gnome-dev                    3~79.gbp69b17a                                 all          Librem5 GNOME development packages
ii  librem5-gnome-phone                  3~79.gbp69b17a                                 all          GNOME PTSN telephony metapackage for the Librem5
ii  librest-0.7-0:amd64                  0.8.1-1                                        amd64        REST service access library
ii  librsvg2-2:amd64                     2.44.10-2.1                                    amd64        SAX-based renderer library for SVG files (runtime)
ii  librsvg2-common:amd64                2.44.10-2.1                                    amd64        SAX-based renderer library for SVG files (extra runtime)
ii  librtmp1:amd64                       2.4+20151223.gitfa8646d.1-2                    amd64        toolkit for RTMP streams (shared library)
ii  libruby2.5:amd64                     2.5.5-3                                        amd64        Libraries necessary to run Ruby 2.5
ii  libsamplerate0:amd64                 0.1.9-2                                        amd64        Audio sample rate conversion library
ii  libsane:amd64                        1.0.27-3.2                                     amd64        API library for scanners
ii  libsane-common                       1.0.27-3.2                                     all          API library for scanners -- documentation and support files
ii  libsasl2-2:amd64                     2.1.27+dfsg-1                                  amd64        Cyrus SASL - authentication abstraction library
ii  libsasl2-modules:amd64               2.1.27+dfsg-1                                  amd64        Cyrus SASL - pluggable authentication modules
ii  libsasl2-modules-db:amd64            2.1.27+dfsg-1                                  amd64        Cyrus SASL - pluggable authentication modules (DB)
ii  libsbc1:amd64                        1.4-1                                          amd64        Sub Band CODEC library - runtime
ii  libseccomp2:amd64                    2.3.3-4                                        amd64        high level interface to Linux seccomp filter
ii  libsecret-1-0:amd64                  0.18.7-1                                       amd64        Secret store
ii  libsecret-common                     0.18.7-1                                       all          Secret store (common files)
ii  libselinux1:amd64                    2.8-1+b1                                       amd64        SELinux runtime shared libraries
ii  libselinux1-dev:amd64                2.8-1+b1                                       amd64        SELinux development headers
ii  libsemanage-common                   2.8-2                                          all          Common files for SELinux policy management libraries
ii  libsemanage1:amd64                   2.8-2                                          amd64        SELinux policy management library
ii  libsensors-config                    1:3.5.0-3                                      all          lm-sensors configuration files
ii  libsensors5:amd64                    1:3.5.0-3                                      amd64        library to read temperature/voltage/fan sensors
ii  libsepol1:amd64                      2.8-1                                          amd64        SELinux library for manipulating binary security policies
ii  libsepol1-dev:amd64                  2.8-1                                          amd64        SELinux binary policy manipulation library and development files
ii  libserd-0-0:amd64                    0.28.0~dfsg0-1                                 amd64        lightweight RDF syntax library
ii  libshine3:amd64                      3.1.1-2                                        amd64        Fixed-point MP3 encoding library - runtime files
ii  libshout3:amd64                      2.4.1-2                                        amd64        MP3/Ogg Vorbis broadcast streaming library
ii  libslang2:amd64                      2.3.2-2                                        amd64        S-Lang programming library - runtime version
ii  libsm-dev:amd64                      2:1.2.3-1                                      amd64        X11 Session Management library (development headers)
ii  libsm6:amd64                         2:1.2.3-1                                      amd64        X11 Session Management library
ii  libsmartcols1:amd64                  2.33.1-0.1                                     amd64        smart column output alignment library
ii  libsmbclient:amd64                   2:4.9.5+dfsg-5                                 amd64        shared library for communication with SMB/CIFS servers
ii  libsnappy1v5:amd64                   1.1.7-1                                        amd64        fast compression/decompression library
ii  libsndfile1:amd64                    1.0.28-6                                       amd64        Library for reading/writing audio files
ii  libsndio7.0:amd64                    1.5.0-3                                        amd64        Small audio and MIDI framework from OpenBSD, runtime libraries
ii  libsnmp-base                         5.7.3+dfsg-5                                   all          SNMP configuration script, MIBs and documentation
ii  libsnmp30:amd64                      5.7.3+dfsg-5                                   amd64        SNMP (Simple Network Management Protocol) library
ii  libsord-0-0:amd64                    0.16.0~dfsg0-1+b1                              amd64        library for storing RDF data in memory
ii  libsoundtouch1:amd64                 2.1.2+ds1-1                                    amd64        Sound stretching library
ii  libsoup-gnome2.4-1:amd64             2.64.2-2                                       amd64        HTTP library implementation in C -- GNOME support library
ii  libsoup2.4-1:amd64                   2.64.2-2                                       amd64        HTTP library implementation in C -- Shared library
ii  libsoxr0:amd64                       0.1.2-3                                        amd64        High quality 1D sample-rate conversion library
ii  libspandsp2:amd64                    0.0.6+dfsg-2                                   amd64        Telephony signal processing library
ii  libspectre1:amd64                    0.2.8-1                                        amd64        Library for rendering PostScript documents
ii  libspeex1:amd64                      1.2~rc1.2-1+b2                                 amd64        The Speex codec runtime library
ii  libspeexdsp1:amd64                   1.2~rc1.2-1+b2                                 amd64        The Speex extended runtime library
ii  libsqlite3-0:amd64                   3.27.2-3                                       amd64        SQLite 3 shared library
ii  libsratom-0-0:amd64                  0.6.0~dfsg0-1                                  amd64        library for serialising LV2 atoms to/from Turtle
ii  libsrtp2-1:amd64                     2.2.0-1                                        amd64        Secure RTP (SRTP) and UST Reference Implementations - shared library
ii  libss2:amd64                         1.44.5-1                                       amd64        command-line interface parsing library
ii  libssh2-1:amd64                      1.8.0-2.1                                      amd64        SSH2 client-side library
ii  libssl1.1:amd64                      1.1.1c-1                                       amd64        Secure Sockets Layer toolkit - shared libraries
ii  libstartup-notification0:amd64       0.12-6                                         amd64        library for program launch feedback (shared library)
ii  libstdc++-8-dev:amd64                8.3.0-6                                        amd64        GNU Standard C++ Library v3 (development files)
ii  libstdc++6:amd64                     8.3.0-6                                        amd64        GNU Standard C++ Library v3
ii  libstemmer0d:amd64                   0+svn585-1+b2                                  amd64        Snowball stemming algorithms for use in Information Retrieval
ii  libswresample3:amd64                 7:4.1.3-1                                      amd64        FFmpeg library for audio resampling, rematrixing etc. - runtime files
ii  libsynctex2:amd64                    2018.20181218.49446-1                          amd64        TeX Live: SyncTeX parser library
ii  libsystemd-dev:amd64                 241-5                                          amd64        systemd utility library - development files
ii  libsystemd0:amd64                    241-5                                          amd64        systemd utility library
ii  libtag1v5:amd64                      1.11.1+dfsg.1-0.3                              amd64        audio meta-data library
ii  libtag1v5-vanilla:amd64              1.11.1+dfsg.1-0.3                              amd64        audio meta-data library - vanilla flavour
ii  libtalloc2:amd64                     2.1.14-2                                       amd64        hierarchical pool based memory allocator
ii  libtasn1-6:amd64                     4.13-3                                         amd64        Manage ASN.1 structures (runtime)
ii  libtcl8.6:amd64                      8.6.9+dfsg-2                                   amd64        Tcl (the Tool Command Language) v8.6 - run-time library files
ii  libtdb1:amd64                        1.3.16-2+b1                                    amd64        Trivial Database - shared library
ii  libteamdctl0:amd64                   1.28-1                                         amd64        library for communication with `teamd` process
ii  libtevent0:amd64                     0.9.37-1                                       amd64        talloc-based event loop library - shared library
ii  libtext-charwidth-perl               0.04-7.1+b1                                    amd64        get display widths of characters on the terminal
ii  libtext-iconv-perl                   1.7-5+b7                                       amd64        converts between character sets in Perl
ii  libtext-wrapi18n-perl                0.06-7.1                                       all          internationalized substitute of Text::Wrap
ii  libthai-data                         0.1.28-2                                       all          Data files for Thai language support library
ii  libthai0:amd64                       0.1.28-2                                       amd64        Thai language support library
ii  libtheora0:amd64                     1.1.1+dfsg.1-15                                amd64        Theora Video Compression Codec
ii  libtiff5:amd64                       4.0.10-4                                       amd64        Tag Image File Format (TIFF) library
ii  libtinfo6:amd64                      6.1+20181013-2                                 amd64        shared low-level terminfo library for terminal handling
ii  libtotem-plparser-common             3.26.2-1                                       all          Totem Playlist Parser library - common files
ii  libtotem-plparser18:amd64            3.26.2-1                                       amd64        Totem Playlist Parser library - runtime files
ii  libtsan0:amd64                       8.3.0-6                                        amd64        ThreadSanitizer -- a Valgrind-based detector of data races (runtime)
ii  libtwolame0:amd64                    0.3.13-4                                       amd64        MPEG Audio Layer 2 encoding library
ii  libubsan1:amd64                      8.3.0-6                                        amd64        UBSan -- undefined behaviour sanitizer (runtime)
ii  libudev-dev:amd64                    241-5                                          amd64        libudev development files
ii  libudev1:amd64                       241-5                                          amd64        libudev shared library
ii  libudisks2-0:amd64                   2.8.1-4                                        amd64        GObject based library to access udisks2
ii  libunistring2:amd64                  0.9.10-1                                       amd64        Unicode string library for C
ii  libunwind8:amd64                     1.2.1-9                                        amd64        library to determine the call-chain of a program - runtime
ii  libupower-glib3:amd64                0.99.10-1                                      amd64        abstraction for power management - shared library
ii  libusb-1.0-0:amd64                   2:1.0.22-2                                     amd64        userspace USB programming library
ii  libusbmuxd4:amd64                    1.1.0~git20181007.07a493a-1                    amd64        USB multiplexor daemon for iPhone and iPod Touch devices - library
ii  libutempter0:amd64                   1.1.6-3                                        amd64        privileged helper for utmp/wtmp updates (runtime)
ii  libuuid1:amd64                       2.33.1-0.1                                     amd64        Universally Unique ID library
ii  libv4l-0:amd64                       1.16.3-3                                       amd64        Collection of video4linux support libraries
ii  libv4lconvert0:amd64                 1.16.3-3                                       amd64        Video4linux frame format conversion library
ii  libva-drm2:amd64                     2.4.0-1                                        amd64        Video Acceleration (VA) API for Linux -- DRM runtime
ii  libva-x11-2:amd64                    2.4.0-1                                        amd64        Video Acceleration (VA) API for Linux -- X11 runtime
ii  libva2:amd64                         2.4.0-1                                        amd64        Video Acceleration (VA) API for Linux -- runtime
ii  libvdpau1:amd64                      1.1.1-10                                       amd64        Video Decode and Presentation API for Unix (libraries)
ii  libvisual-0.4-0:amd64                0.4.0-15                                       amd64        audio visualization framework
ii  libvo-aacenc0:amd64                  0.1.3-1+b1                                     amd64        VisualOn AAC encoder library
ii  libvo-amrwbenc0:amd64                0.1.3-1+b1                                     amd64        VisualOn AMR-WB encoder library
ii  libvorbis0a:amd64                    1.3.6-2                                        amd64        decoder library for Vorbis General Audio Compression Codec
ii  libvorbisenc2:amd64                  1.3.6-2                                        amd64        encoder library for Vorbis General Audio Compression Codec
ii  libvorbisfile3:amd64                 1.3.6-2                                        amd64        high-level API for Vorbis General Audio Compression Codec
ii  libvpx5:amd64                        1.7.0-3                                        amd64        VP8 and VP9 video codec (shared library)
ii  libvte-2.91-0:amd64                  0.54.2-2                                       amd64        Terminal emulator widget for GTK+ 3.0 - runtime files
ii  libvte-2.91-common                   0.54.2-2                                       all          Terminal emulator widget for GTK+ 3.0 - common files
ii  libvulkan1:amd64                     1.1.97-2                                       amd64        Vulkan loader library
ii  libwacom-common                      0.32-1                                         all          Wacom model feature query library (common files)
ii  libwacom-dev                         0.32-1                                         amd64        Wacom model feature query library (development files)
ii  libwacom2:amd64                      0.32-1                                         amd64        Wacom model feature query library
ii  libwavpack1:amd64                    5.1.0-6                                        amd64        audio codec (lossy and lossless) - library
ii  libwayland-bin                       1.16.0-1                                       amd64        wayland compositor infrastructure - binary utilities
ii  libwayland-client0:amd64             1.16.0-1                                       amd64        wayland compositor infrastructure - client library
ii  libwayland-cursor0:amd64             1.16.0-1                                       amd64        wayland compositor infrastructure - cursor library
ii  libwayland-dev:amd64                 1.16.0-1                                       amd64        wayland compositor infrastructure - development files
ii  libwayland-egl1:amd64                1.16.0-1                                       amd64        wayland compositor infrastructure - EGL library
ii  libwayland-server0:amd64             1.16.0-1                                       amd64        wayland compositor infrastructure - server library
ii  libwbclient0:amd64                   2:4.9.5+dfsg-5                                 amd64        Samba winbind client library
ii  libwebkit2gtk-4.0-37:amd64           2.24.3+1320+git923502c69-1pureos0              amd64        Web content engine library for GTK
ii  libwebp6:amd64                       0.6.1-2                                        amd64        Lossy compression of digital photographic images.
ii  libwebpdemux2:amd64                  0.6.1-2                                        amd64        Lossy compression of digital photographic images.
ii  libwebpmux3:amd64                    0.6.1-2                                        amd64        Lossy compression of digital photographic images.
ii  libwebrtc-audio-processing1:amd64    0.3-1                                          amd64        AudioProcessing module from the WebRTC project.
ii  libweston-5-0                        5.0.0-3                                        amd64        reference implementation of a wayland compositor (shared libs)
ii  libwildmidi2:amd64                   0.4.3-1                                        amd64        software MIDI player library
ii  libwlroots-examples                  0.0.0~git20180912.1-1~librem5.2~3112.gbp23bec6 amd64        Modular wayland compositor library - binaries
ii  libwlroots0:amd64                    0.0.0~git20180912.1-1~librem5.2~3112.gbp23bec6 amd64        Modular wayland compositor library - shared library
ii  libwoff1:amd64                       1.0.2-1                                        amd64        library for converting fonts to WOFF 2.0
ii  libwrap0:amd64                       7.6.q-28                                       amd64        Wietse Venema's TCP wrappers library
ii  libx11-6:amd64                       2:1.6.7-1                                      amd64        X11 client-side library
ii  libx11-data                          2:1.6.7-1                                      all          X11 client-side library
ii  libx11-dev:amd64                     2:1.6.7-1                                      amd64        X11 client-side library (development headers)
ii  libx11-xcb-dev:amd64                 2:1.6.7-1                                      amd64        Xlib/XCB interface library (development headers)
ii  libx11-xcb1:amd64                    2:1.6.7-1                                      amd64        Xlib/XCB interface library
ii  libx264-155:amd64                    2:0.155.2917+git0a84d98-2                      amd64        x264 video coding library
ii  libx265-165:amd64                    2.9-4                                          amd64        H.265/HEVC video stream encoder (shared library)
ii  libx86-1:amd64                       1.1+ds1-10.2                                   amd64        x86 real-mode library
ii  libxau-dev:amd64                     1:1.0.8-1+b2                                   amd64        X11 authorisation library (development headers)
ii  libxau6:amd64                        1:1.0.8-1+b2                                   amd64        X11 authorisation library
ii  libxaw7:amd64                        2:1.0.13-1+b2                                  amd64        X11 Athena Widget library
ii  libxcb-composite0:amd64              1.13.1-2                                       amd64        X C Binding, composite extension
ii  libxcb-composite0-dev:amd64          1.13.1-2                                       amd64        X C Binding, composite extension, development files
ii  libxcb-dri2-0:amd64                  1.13.1-2                                       amd64        X C Binding, dri2 extension
ii  libxcb-dri2-0-dev:amd64              1.13.1-2                                       amd64        X C Binding, dri2 extension, development files
ii  libxcb-dri3-0:amd64                  1.13.1-2                                       amd64        X C Binding, dri3 extension
ii  libxcb-dri3-dev:amd64                1.13.1-2                                       amd64        X C Binding, dri3 extension, development files
ii  libxcb-glx0:amd64                    1.13.1-2                                       amd64        X C Binding, glx extension
ii  libxcb-glx0-dev:amd64                1.13.1-2                                       amd64        X C Binding, glx extension, development files
ii  libxcb-icccm4:amd64                  0.4.1-1.1                                      amd64        utility libraries for X C Binding -- icccm
ii  libxcb-icccm4-dev:amd64              0.4.1-1.1                                      amd64        utility libraries for X C Binding -- icccm, development files
ii  libxcb-image0:amd64                  0.4.0-1+b2                                     amd64        utility libraries for X C Binding -- image
ii  libxcb-image0-dev:amd64              0.4.0-1+b2                                     amd64        utility libraries for X C Binding -- image, development files
ii  libxcb-present-dev:amd64             1.13.1-2                                       amd64        X C Binding, present extension, development files
ii  libxcb-present0:amd64                1.13.1-2                                       amd64        X C Binding, present extension
ii  libxcb-randr0:amd64                  1.13.1-2                                       amd64        X C Binding, randr extension
ii  libxcb-randr0-dev:amd64              1.13.1-2                                       amd64        X C Binding, randr extension, development files
ii  libxcb-render0:amd64                 1.13.1-2                                       amd64        X C Binding, render extension
ii  libxcb-render0-dev:amd64             1.13.1-2                                       amd64        X C Binding, render extension, development files
ii  libxcb-res0:amd64                    1.13.1-2                                       amd64        X C Binding, res extension
ii  libxcb-shape0:amd64                  1.13.1-2                                       amd64        X C Binding, shape extension
ii  libxcb-shape0-dev:amd64              1.13.1-2                                       amd64        X C Binding, shape extension, development files
ii  libxcb-shm0:amd64                    1.13.1-2                                       amd64        X C Binding, shm extension
ii  libxcb-shm0-dev:amd64                1.13.1-2                                       amd64        X C Binding, shm extension, development files
ii  libxcb-sync-dev:amd64                1.13.1-2                                       amd64        X C Binding, sync extension, development files
ii  libxcb-sync1:amd64                   1.13.1-2                                       amd64        X C Binding, sync extension
ii  libxcb-util0:amd64                   0.3.8-3+b2                                     amd64        utility libraries for X C Binding -- atom, aux and event
ii  libxcb-xfixes0:amd64                 1.13.1-2                                       amd64        X C Binding, xfixes extension
ii  libxcb-xfixes0-dev:amd64             1.13.1-2                                       amd64        X C Binding, xfixes extension, development files
ii  libxcb-xinput0:amd64                 1.13.1-2                                       amd64        X C Binding, xinput extension
ii  libxcb-xkb1:amd64                    1.13.1-2                                       amd64        X C Binding, XKEYBOARD extension
ii  libxcb1:amd64                        1.13.1-2                                       amd64        X C Binding
ii  libxcb1-dev:amd64                    1.13.1-2                                       amd64        X C Binding, development files
ii  libxcomposite-dev:amd64              1:0.4.4-2                                      amd64        X11 Composite extension library (development headers)
ii  libxcomposite1:amd64                 1:0.4.4-2                                      amd64        X11 Composite extension library
ii  libxcursor-dev:amd64                 1:1.1.15-2                                     amd64        X cursor management library (development files)
ii  libxcursor1:amd64                    1:1.1.15-2                                     amd64        X cursor management library
ii  libxdamage-dev:amd64                 1:1.1.4-3+b3                                   amd64        X11 damaged region extension library (development headers)
ii  libxdamage1:amd64                    1:1.1.4-3+b3                                   amd64        X11 damaged region extension library
ii  libxdmcp-dev:amd64                   1:1.1.2-3                                      amd64        X11 authorisation library (development headers)
ii  libxdmcp6:amd64                      1:1.1.2-3                                      amd64        X11 Display Manager Control Protocol library
ii  libxext-dev:amd64                    2:1.3.3-1+b2                                   amd64        X11 miscellaneous extensions library (development headers)
ii  libxext6:amd64                       2:1.3.3-1+b2                                   amd64        X11 miscellaneous extension library
ii  libxfixes-dev:amd64                  1:5.0.3-1                                      amd64        X11 miscellaneous 'fixes' extension library (development headers)
ii  libxfixes3:amd64                     1:5.0.3-1                                      amd64        X11 miscellaneous 'fixes' extension library
ii  libxfont2:amd64                      1:2.0.3-1                                      amd64        X11 font rasterisation library
ii  libxft-dev:amd64                     2.3.2-2                                        amd64        FreeType-based font drawing library for X (development files)
ii  libxft2:amd64                        2.3.2-2                                        amd64        FreeType-based font drawing library for X
ii  libxi-dev:amd64                      2:1.7.9-1                                      amd64        X11 Input extension library (development headers)
ii  libxi6:amd64                         2:1.7.9-1                                      amd64        X11 Input extension library
ii  libxinerama-dev:amd64                2:1.1.4-2                                      amd64        X11 Xinerama extension library (development headers)
ii  libxinerama1:amd64                   2:1.1.4-2                                      amd64        X11 Xinerama extension library
ii  libxkbcommon-dev:amd64               0.8.2-1                                        amd64        library interface to the XKB compiler - development files
ii  libxkbcommon-x11-0:amd64             0.8.2-1                                        amd64        library to create keymaps with the XKB X11 protocol
ii  libxkbcommon0:amd64                  0.8.2-1                                        amd64        library interface to the XKB compiler - shared library
ii  libxkbfile1:amd64                    1:1.0.9-2+b11                                  amd64        X11 keyboard file manipulation library
ii  libxml2:amd64                        2.9.4+dfsg1-7+b3                               amd64        GNOME XML library
ii  libxmu6:amd64                        2:1.1.2-2+b3                                   amd64        X11 miscellaneous utility library
ii  libxpm4:amd64                        1:3.5.12-1                                     amd64        X11 pixmap library
ii  libxrandr-dev:amd64                  2:1.5.1-1                                      amd64        X11 RandR extension library (development headers)
ii  libxrandr2:amd64                     2:1.5.1-1                                      amd64        X11 RandR extension library
ii  libxrender-dev:amd64                 1:0.9.10-1                                     amd64        X Rendering Extension client library (development files)
ii  libxrender1:amd64                    1:0.9.10-1                                     amd64        X Rendering Extension client library
ii  libxshmfence-dev:amd64               1.3-1                                          amd64        X shared memory fences - development files
ii  libxshmfence1:amd64                  1.3-1                                          amd64        X shared memory fences - shared library
ii  libxslt1.1:amd64                     1.1.32-2                                       amd64        XSLT 1.0 processing library - runtime library
ii  libxt6:amd64                         1:1.1.5-1+b3                                   amd64        X11 toolkit intrinsics library
ii  libxtables12:amd64                   1.8.2-4                                        amd64        netfilter xtables library
ii  libxtst-dev:amd64                    2:1.2.3-1                                      amd64        X11 Record extension library (development headers)
ii  libxtst6:amd64                       2:1.2.3-1                                      amd64        X11 Testing -- Record extension library
ii  libxv1:amd64                         2:1.0.11-1                                     amd64        X11 Video extension library
ii  libxvidcore4:amd64                   2:1.3.5-1                                      amd64        Open source MPEG-4 video codec (library)
ii  libxxf86vm-dev:amd64                 1:1.1.4-1+b2                                   amd64        X11 XFree86 video mode extension library (development headers)
ii  libxxf86vm1:amd64                    1:1.1.4-1+b2                                   amd64        X11 XFree86 video mode extension library
ii  libyaml-0-2:amd64                    0.2.1-1                                        amd64        Fast YAML 1.1 parser and emitter library
ii  libzbar0:amd64                       0.22-1                                         amd64        bar code scanner and decoder (library)
ii  libzephyr4:amd64                     3.1.2-1+b3                                     amd64        Project Athena's notification service - non-Kerberos libraries
ii  libzstd1:amd64                       1.3.8+dfsg-3                                   amd64        fast lossless compression algorithm
ii  libzvbi-common                       0.2.35-16                                      all          Vertical Blanking Interval decoder (VBI) - common files
ii  libzvbi0:amd64                       0.2.35-16                                      amd64        Vertical Blanking Interval decoder (VBI) - runtime files
ii  linux-base                           4.6                                            all          Linux image base package
ii  linux-image-4.19.0-5-amd64           4.19.37-5                                      amd64        Linux 4.19 for 64-bit PCs (signed)
ii  linux-image-amd64                    4.19+105                                       amd64        Linux for 64-bit PCs (meta-package)
ii  linux-libc-dev:amd64                 4.19.37-5                                      amd64        Linux support headers for userspace development
ii  locales                              2.28-10                                        all          GNU C Library: National Language (locale) data [support]
ii  login                                1:4.5-1.1                                      amd64        system login tools
ii  logrotate                            3.14.0-4                                       amd64        Log rotation utility
ii  lsb-base                             10.2019051400                                  all          Linux Standard Base init script functionality
ii  lsof                                 4.91+dfsg-1                                    amd64        utility to list open files
ii  lua-bitop:amd64                      1.0.2-5                                        amd64        fast bit manipulation library for the Lua language
ii  lua-expat:amd64                      1.3.0-4                                        amd64        libexpat bindings for the Lua language
ii  lua-json                             1.3.4-2                                        all          JSON decoder/encoder for Lua
ii  lua-lpeg:amd64                       1.0.0-2                                        amd64        LPeg library for the Lua language
ii  lua-socket:amd64                     3.0~rc1+git+ac3201d-4                          amd64        TCP/UDP socket library for the Lua language
ii  make                                 4.2.1-1.2                                      amd64        utility for directing compilation
ii  mariadb-common                       1:10.3.15-1                                    all          MariaDB common metapackage
ii  mawk                                 1.3.3-17+b3                                    amd64        a pattern scanning and text processing language
ii  mesa-common-dev:amd64                18.3.6-2pureos+librem5.3~118051.gbp615480      amd64        Developer documentation for Mesa
ii  meson                                0.49.2-1                                       all          high-productivity build system
ii  mime-support                         3.62                                           all          MIME files 'mime.types' & 'mailcap', and support programs
ii  modemmanager                         1.10.0-1purple+librem5.3~5953.gbp63c6e1        amd64        D-Bus service for managing modems
ii  mount                                2.33.1-0.1                                     amd64        tools for mounting and manipulating filesystems
ii  mutter                               3.30.2-7                                       amd64        lightweight GTK+ window manager
ii  mutter-common                        3.30.2-7                                       all          shared files for the Mutter window manager
ii  mysql-common                         5.8+1.0.5                                      all          MySQL database common files, e.g. /etc/mysql/my.cnf
ii  nano                                 3.2-3                                          amd64        small, friendly text editor inspired by Pico
ii  ncurses-base                         6.1+20181013-2                                 all          basic terminal type definitions
ii  ncurses-bin                          6.1+20181013-2                                 amd64        terminal-related programs and man pages
ii  net-tools                            1.60+git20180626.aebd88e-1                     amd64        NET-3 networking toolkit
ii  netbase                              5.6                                            all          Basic TCP/IP networking system
ii  network-manager                      1.14.6-2                                       amd64        network management framework (daemon and userspace tools)
ii  network-manager-gnome                1.8.20-1.1                                     amd64        network management framework (GNOME frontend)
ii  ninja-build                          1.8.2-1                                        amd64        small build system closest in spirit to Make
ii  openssh-client                       1:7.9p1-10                                     amd64        secure shell (SSH) client, for secure access to remote machines
ii  openssh-server                       1:7.9p1-10                                     amd64        secure shell (SSH) server, for secure access from remote machines
ii  openssh-sftp-server                  1:7.9p1-10                                     amd64        secure shell (SSH) sftp server module, for SFTP access from remote machines
ii  openssl                              1.1.1c-1                                       amd64        Secure Sockets Layer toolkit - cryptographic utility
ii  p11-kit                              0.23.15-2                                      amd64        p11-glue utilities
ii  p11-kit-modules:amd64                0.23.15-2                                      amd64        p11-glue proxy and trust modules
ii  pango1.0-tools                       1.42.4-6                                       amd64        Development utilities for Pango
ii  passwd                               1:4.5-1.1                                      amd64        change and administer password and group data
ii  patch                                2.7.6-3                                        amd64        Apply a diff file to an original
ii  perl                                 5.28.1-6                                       amd64        Larry Wall's Practical Extraction and Report Language
ii  perl-base                            5.28.1-6                                       amd64        minimal Perl system
ii  perl-modules-5.28                    5.28.1-6                                       all          Core Perl modules
ii  phoc                                 0.0.1~111.gbpb963ac                            amd64        Wayland compositor for mobile phones
ii  phosh                                0.0.4~689.gbp58a8a7                            amd64        Pure Wayland shell for mobile devices
ii  pidgin-data                          2.13.0-2                                       all          multi-protocol instant messaging client - data files
ii  pinentry-curses                      1.1.0-2                                        amd64        curses-based PIN or pass-phrase entry dialog for GnuPG
ii  pinentry-gnome3                      1.1.0-2                                        amd64        GNOME 3 PIN or pass-phrase entry dialog for GnuPG
ii  pkg-config                           0.29-6                                         amd64        manage compile and link flags for libraries
ii  policykit-1                          0.105-25                                       amd64        framework for managing administrative policies and privileges
ii  poppler-data                         0.4.9-2                                        all          encoding data for the poppler PDF rendering library
ii  procps                               2:3.3.15-2                                     amd64        /proc file system utilities
ii  pulseaudio                           12.2-4                                         amd64        PulseAudio sound server
ii  pulseaudio-utils                     12.2-4                                         amd64        Command line tools for the PulseAudio sound server
ii  purple-mm-sms                        0.0.4~34.gbp27086a                             amd64        libpurple plugin for SMS
ii  python                               2.7.16-1                                       amd64        interactive high-level object-oriented language (Python2 version)
ii  python-minimal                       2.7.16-1                                       amd64        minimal subset of the Python2 language
ii  python-talloc:amd64                  2.1.14-2                                       amd64        hierarchical pool based memory allocator - Python bindings
ii  python2                              2.7.16-1                                       amd64        interactive high-level object-oriented language (Python2 version)
ii  python2-minimal                      2.7.16-1                                       amd64        minimal subset of the Python2 language
ii  python2.7                            2.7.16-2                                       amd64        Interactive high-level object-oriented language (version 2.7)
ii  python2.7-minimal                    2.7.16-2                                       amd64        Minimal subset of the Python language (version 2.7)
ii  python3                              3.7.3-1                                        amd64        interactive high-level object-oriented language (default python3 version)
ii  python3-atomicwrites                 1.1.5-2                                        all          Atomic file writes - Python 3.x
ii  python3-attr                         18.2.0-1                                       all          Attributes without boilerplate (Python 3)
ii  python3-distutils                    3.7.3-1                                        all          distutils package for Python 3.x
ii  python3-evdev                        1.1.2+dfsg-1+b10                               amd64        Python 3 bindings for the Linux input subsystem
ii  python3-gi                           3.30.4-1                                       amd64        Python 3 bindings for gobject-introspection libraries
ii  python3-lib2to3                      3.7.3-1                                        all          Interactive high-level object-oriented language (2to3, version 3.6)
ii  python3-minimal                      3.7.3-1                                        amd64        minimal subset of the Python language (default python3 version)
ii  python3-more-itertools               4.2.0-1                                        all          library with routines for operating on iterables, beyond itertools (Python 3)
ii  python3-pkg-resources                40.8.0-1                                       all          Package Discovery and Resource Access using pkg_resources
ii  python3-pluggy                       0.8.0-1                                        all          plugin and hook calling mechanisms for Python - 3.x
ii  python3-py                           1.7.0-2                                        all          Advanced Python development support library (Python 3)
ii  python3-pytest                       3.10.1-2                                       all          Simple, powerful testing in Python3
ii  python3-six                          1.12.0-1                                       all          Python 2 and 3 compatibility library (Python 3 interface)
ii  python3-yaml                         3.13-2                                         amd64        YAML parser and emitter for Python3
ii  python3.7                            3.7.3-2                                        amd64        Interactive high-level object-oriented language (version 3.7)
ii  python3.7-minimal                    3.7.3-2                                        amd64        Minimal subset of the Python language (version 3.7)
ii  qemu-utils                           1:3.1+dfsg-8~deb10u1                           amd64        QEMU utilities
ii  rake                                 12.3.1-3                                       all          ruby make-like utility
ii  read-edid                            3.0.2-1+b1                                     amd64        hardware information-gathering tool for VESA PnP monitors
ii  readline-common                      7.0-5                                          all          GNU readline and history libraries, common files
rc  rsyslog                              8.1901.0-1                                     amd64        reliable system and kernel logging daemon
ii  ruby                                 1:2.5.1                                        amd64        Interpreter of object-oriented scripting language Ruby (default version)
ii  ruby-did-you-mean                    1.2.1-1                                        all          smart error messages for Ruby > 2.3
ii  ruby-minitest                        5.11.3-1                                       all          Ruby test tools supporting TDD, BDD, mocking, and benchmarking
ii  ruby-net-telnet                      0.1.1-2                                        all          telnet client library
ii  ruby-power-assert                    1.1.1-1                                        all          library showing values of variables and method calls in an expression
ii  ruby-test-unit                       3.2.8-1                                        all          unit testing framework for Ruby
ii  ruby-xmlrpc                          0.3.0-2                                        all          XMLRPC library for Ruby
ii  ruby2.5                              2.5.5-3                                        amd64        Interpreter of object-oriented scripting language Ruby
ii  rubygems-integration                 1.11                                           all          integration of Debian Ruby packages with Rubygems
ii  samba-libs:amd64                     2:4.9.5+dfsg-5                                 amd64        Samba core libraries
ii  scdaemon                             2.2.12-1                                       amd64        GNU privacy guard - smart card support
ii  screen                               4.6.2-3                                        amd64        terminal multiplexer with VT100/ANSI terminal emulation
ii  sed                                  4.7-1                                          amd64        GNU stream editor for filtering/transforming text
ii  sensible-utils                       0.0.12                                         all          Utilities for sensible alternative selection
ii  shared-mime-info                     1.10-1                                         amd64        FreeDesktop.org shared MIME database and spec
ii  sound-theme-freedesktop              0.8-2                                          all          freedesktop.org sound theme
ii  strace                               4.26-0.2                                       amd64        System call tracer
ii  sudo                                 1.8.27-1                                       amd64        Provide limited super user privileges to specific users
ii  systemd                              241-5                                          amd64        system and service manager
ii  systemd-coredump                     241-5                                          amd64        tools for storing and retrieving coredumps
ii  systemd-sysv                         241-5                                          amd64        system and service manager - SysV links
ii  sysvinit-utils                       2.93-8                                         amd64        System-V-like utilities
ii  tar                                  1.30+dfsg-6                                    amd64        GNU version of the tar archiving utility
ii  tasksel                              3.53                                           all          tool for selecting tasks for installation on Debian systems
ii  tasksel-data                         3.53                                           all          official tasks used for installation of Debian systems
ii  tzdata                               2019a-1                                        all          time zone and daylight-saving time data
ii  u-boot-tools                         2019.01+dfsg-7                                 amd64        companion tools for Das U-Boot bootloader
ii  ucf                                  3.0038+nmu1                                    all          Update Configuration File(s): preserve user changes to config files
ii  udev                                 241-5                                          amd64        /dev/ and hotplug management daemon
ii  unzip                                6.0-23                                         amd64        De-archiver for .zip files
ii  upower                               0.99.10-1                                      amd64        abstraction for power management
ii  usb-modeswitch                       2.5.2+repack0-2                                amd64        mode switching tool for controlling "flip flop" USB devices
ii  usb-modeswitch-data                  20170806-2                                     all          mode switching data for usb-modeswitch
ii  usb.ids                              2019.04.23-1                                   all          USB ID Repository
ii  usbutils                             1:010-3                                        amd64        Linux USB utilities
ii  util-linux                           2.33.1-0.1                                     amd64        miscellaneous system utilities
ii  uuid-dev:amd64                       2.33.1-0.1                                     amd64        Universally Unique ID library - headers and static libraries
ii  vim-common                           2:8.1.0875-5                                   all          Vi IMproved - Common files
ii  vim-gtk3                             2:8.1.0875-5                                   amd64        Vi IMproved - enhanced vi editor - with GTK3 GUI
ii  vim-gui-common                       2:8.1.0875-5                                   all          Vi IMproved - Common GUI files
ii  vim-runtime                          2:8.1.0875-5                                   all          Vi IMproved - Runtime files
ii  vim-tiny                             2:8.1.0875-5                                   amd64        Vi IMproved - enhanced vi editor - compact version
ii  virtboard                            0.0.6~6313.gbp576fff                           amd64        On-screen keyboard for Wayland
ii  wayland-protocols                    1.17-1                                         all          wayland compositor protocols
ii  weston                               5.0.0-3                                        amd64        reference implementation of a wayland compositor
ii  wget                                 1.20.1-1.1                                     amd64        retrieves files from the web
ii  whiptail                             0.52.20-8                                      amd64        Displays user-friendly dialog boxes from shell scripts
ii  wireless-tools                       30~pre9-13                                     amd64        Tools for manipulating Linux Wireless Extensions
ii  wpasupplicant                        2:2.7+git20190128+0c1e29f-6                    amd64        client support for WPA and WPA2 (IEEE 802.11i)
ii  x11-common                           1:7.7+19                                       all          X Window System (X.Org) infrastructure
ii  x11-xkb-utils                        7.7+4                                          amd64        X11 XKB utilities
ii  x11proto-composite-dev               1:2018.4-4                                     all          transitional dummy package
ii  x11proto-core-dev                    2018.4-4                                       all          transitional dummy package
ii  x11proto-damage-dev                  1:2018.4-4                                     all          transitional dummy package
ii  x11proto-dev                         2018.4-4                                       all          X11 extension protocols and auxiliary headers
ii  x11proto-fixes-dev                   1:2018.4-4                                     all          transitional dummy package
ii  x11proto-input-dev                   2018.4-4                                       all          transitional dummy package
ii  x11proto-randr-dev                   2018.4-4                                       all          transitional dummy package
ii  x11proto-record-dev                  2018.4-4                                       all          transitional dummy package
ii  x11proto-xext-dev                    2018.4-4                                       all          transitional dummy package
ii  x11proto-xf86vidmode-dev             2018.4-4                                       all          transitional dummy package
ii  x11proto-xinerama-dev                2018.4-4                                       all          transitional dummy package
ii  xdg-dbus-proxy                       0.1.1-1                                        amd64        filtering D-Bus proxy
ii  xdg-desktop-portal                   1.2.0-1                                        amd64        desktop integration portal for Flatpak and Snap
ii  xdg-desktop-portal-gtk               1.2.0-1                                        amd64        GTK+/GNOME portal backend for xdg-desktop-portal
ii  xdg-user-dirs                        0.17-2                                         amd64        tool to manage well known user directories
ii  xkb-data                             2.26-2                                         all          X Keyboard Extension (XKB) configuration data
ii  xorg-sgml-doctools                   1:1.11-1                                       all          Common tools for building X.Org SGML documentation
ii  xserver-common                       2:1.20.4-1                                     all          common files used by various X servers
ii  xtrans-dev                           1.3.5-1                                        all          X transport library (development files)
ii  xwayland                             2:1.20.4-1                                     amd64        Xwayland X server
ii  xxd                                  2:8.1.0875-5                                   amd64        tool to make (or reverse) a hex dump
ii  xz-utils                             5.2.4-1                                        amd64        XZ-format compression utilities
ii  zenity                               3.30.0-2                                       amd64        Display graphical dialog boxes from shell scripts
ii  zenity-common                        3.30.0-2                                       all          Display graphical dialog boxes from shell scripts (common files)
ii  zlib1g:amd64                         1:1.2.11.dfsg-1                                amd64        compression library - runtime
ii  zlib1g-dev:amd64                     1:1.2.11.dfsg-1                                amd64        compression library - development
