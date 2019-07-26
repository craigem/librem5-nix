{ stdenv, fetchFromGitLab, meson, ninja, pkgconfig
, libhandy, modemmanager
, gtk3, gnome3
, dbus, xlibs, xvfb_run, libxml2
}:

stdenv.mkDerivation rec {
  pname = "calls";
  version = "0.0.1";

  src = fetchFromGitLab {
    domain = "source.puri.sm";
    owner = "Librem5";
    repo = pname;
    rev = "v${version}";
    sha256 = "0qjgajrq3kbml3zrwwzl23jbj6y62ccjakp667jq57jbs8af77pq";
  };

  nativeBuildInputs = [
    meson ninja pkgconfig libhandy modemmanager
  ];
  buildInputs = [ libhandy gnome3.gsound gtk3 gnome3.libpeas libxml2 ];
  checkInputs = [ dbus xvfb_run xlibs.xauth ];

  mesonFlags = [
    "-Dgtk_doc=false"
  ];

  doCheck = true;

  checkPhase = ''
    runHook preCheck
    NO_AT_BRIDGE=1 \
    xvfb-run -s '-screen 0 800x600x24' dbus-run-session \
      --config-file=${dbus.daemon}/share/dbus-1/session.conf \
      meson test --print-errorlogs
    runHook postCheck
  '';

  meta = with stdenv.lib; {
    description = "A phone dialer and call handler";
    homepage = https://source.puri.sm/Librem5/calls;
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ craigem ];
    platforms = platforms.linux;
  };
}
