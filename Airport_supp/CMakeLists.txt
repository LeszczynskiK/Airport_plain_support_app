cmake_minimum_required(VERSION 3.16)

project(Airport_supp VERSION 0.1 LANGUAGES CXX)


set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)


#Sources
set(SOURCES
    main.cpp
    runwaymanager.cpp
    inflightassistance.cpp
    afterlanding.cpp
)

# Heading files
set(HEADERS
    runwaymanager.h
    inflightassistance.h
    afterlanding.h
)

qt_add_executable(appAirport_supp
     ${SOURCES} ${HEADERS}
)

qt_add_qml_module(appAirport_supp
    URI Airport_supp
    VERSION 1.0
    QML_FILES
        Main.qml
        AirportPage.qml
        InTheAirPage.qml
        AfterLandingPage.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appAirport_supp PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appAirport_supp
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appAirport_supp
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appAirport_supp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
