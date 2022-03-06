# CMake generated Testfile for 
# Source directory: /home/user/Programming/Kirigami/contacter
# Build directory: /home/user/Programming/Kirigami/contacter/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(appstreamtest "/usr/bin/cmake" "-DAPPSTREAMCLI=/usr/bin/appstreamcli" "-DINSTALL_FILES=/home/user/Programming/Kirigami/contacter/build/install_manifest.txt" "-P" "/usr/share/ECM/kde-modules/appstreamtest.cmake")
set_tests_properties(appstreamtest PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;161;add_test;/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;179;appstreamtest;/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;0;;/home/user/Programming/Kirigami/contacter/CMakeLists.txt;18;include;/home/user/Programming/Kirigami/contacter/CMakeLists.txt;0;")
subdirs("src")
