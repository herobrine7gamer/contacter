# contacter

a contacts demo app made using kirigami and qt .
it shows some contacts in a convergent view .

# Building

first , install dependencies :
- for Debian and Ubuntu based distributions :\
```sudo apt install build-essential extra-cmake-modules cmake qtbase5-dev qtdeclarative5-dev libqt5svg5-dev qtquickcontrols2-5-dev qml-module-org-kde-kirigami2 kirigami2-dev libkf5i18n-dev gettext libkf5coreaddons-dev qml-module-qtquick-layouts```

- for arch based distributions :\
```sudo pacman -Syu base-devel extra-cmake-modules cmake kirigami2 kde-sdk-meta gettext```

- for Fedora :\
```sudo dnf groupinstall "Development Tools" "Development Libraries"```\
```sudo dnf install extra-cmake-modules cmake qt5-qtbase-devel qt5-qtdeclarative-devel qt5-qtquickcontrols2-devel kf5-kirigami2 kf5-kirigami2-devel kf5-ki18n-devel kf5-kcoreaddons-devel gettext```

to build the program , run :\
``` cmake -B build/ . && cmake --build build/```\
and to execute it , run :\
```./build/bin/contacter```

# features that i will (hopefully) implement :

- saving and editing contacts
- profile pictures
- the ability to send emails/make calls directly from the app
