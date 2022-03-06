# SPDX-License-Identifier: BSD-3-Clause
# SPDX-FileCopyrightText: 2022 HEROBRINE7GAMER <tapermeerkat77@gmail.com>

add_executable(contacter
    main.cpp
    about.cpp
    app.cpp
    resources.qrc)

target_link_libraries(contacter
    Qt5::Core
    Qt5::Gui
    Qt5::Qml
    Qt5::Quick
    Qt5::QuickControls2
    Qt5::Svg
    KF5::I18n
    KF5::CoreAddons
    KF5::ConfigCore
    KF5::ConfigGui)

kconfig_add_kcfg_files(contacter GENERATE_MOC contacterconfig.kcfgc)
install(TARGETS contacter ${KDE_INSTALL_TARGETS_DEFAULT_ARGS})
