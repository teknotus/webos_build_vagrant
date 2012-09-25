include editors, dep, build_dep

exec{ "apt-update":
  command => "/usr/bin/apt-get -y update"
}

class editors {
  package{
    ["vim","emacs23-nox"]:
      ensure  => latest,
      require => Exec["apt-update"];
    }
}

class dep {
  package{
    ["autoconf",
     "bison",
     "curl",
     "flex",
     "g++",
     "git",
     "git-core",
     "gperf",
     "libboost-filesystem-dev",
     "libboost-program-options-dev",
     "libboost-regex-dev",
     "libboost-system-dev",
     "libc-ares-dev",
     "libcurl4-openssl-dev",
     "libdb4.8-dev",
     "libfreetype6-dev",
     "libgl1-mesa-dev",
     "libglib2.0-dev",
     "libglibmm-2.4-dev",
     "libgstreamer0.10-dev",
     "libgstreamer-plugins-base0.10-dev",
     "libicu-dev",
     "libsigc++-2.0-dev",
     "libsqlite3-dev",
     "libssl-dev",
     "libtool",
     "liburiparser-dev",
     "libx11-xcb-dev",
     "libxcb1-dev",
     "libxcb-icccm4-dev",
     "libxcb-image0-dev",
     "libxcb-keysyms1-dev",
     "libxcb-render-util0-dev",
     "libxcb-sync0-dev",
     "libxcursor-dev",
     "libxfixes-dev",
     "libxi-dev",
     "libxinerama-dev",
     "libxrandr-dev",
     "libyajl1",
     "libyajl-dev",
     "make",
     "pkg-config",
     "qt4-qmake",
     "tcl",
     "unzip",
     "xcb"]:
       ensure  => latest,
       require => Exec['apt-update']
  }
}
class build_dep {
  package{
    ["freetds-dev",
     "libasound2-dev",
     "libaudio-dev",
     "libcups2-dev",
     "libdbus-1-dev",
     "libglu1-mesa-dev",
     "libgtk2.0-dev",
     "libice-dev",
     "libjpeg-dev",
     "libmng-dev",
     "libmysqlclient-dev",
     "libpam0g-dev",
     "libpng12-dev",
     "libpq-dev",
     "libsm-dev",
     "libtiff4-dev",
     "libxft-dev",
     "libxmu-dev",
     "libxslt1-dev",
     "libxt-dev",
     "libxtst-dev",
     "libxv-dev",
     "pkg-kde-tools",
     "unixodbc-dev"]:
       ensure  => latest,
       require => Exec['apt-update']
  }
}
