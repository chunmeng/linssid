TEMPLATE = app
DESTDIR = dist/Release/GNU-Linux-x86
TARGET = linssid
VERSION = 3.6
CONFIG -= debug_and_release app_bundle lib_bundle
CONFIG += release 
PKGCONFIG +=
QT = core gui widgets svg
SOURCES += AboutBox.cpp Getter.cpp MainForm.cpp main.cpp prefsDialog.cpp VendorDb.cpp DataLogger.cpp Utils.cpp PrefsHandler.cpp DataProxyModel.cpp ViewFilterDialog.cpp Logger.cpp
HEADERS += AboutBox.h Custom.h Getter.h MainForm.h prefsDialog.h DataStruct.h VendorDb.h DataLogger.h Utils.h PrefsHandler.h DataProxyModel.h ViewFilterDialog.h Logger.h
FORMS += AboutBox.ui MainForm.ui prefsDialog.ui ViewFilterDialog.ui
RESOURCES +=
TRANSLATIONS +=
OBJECTS_DIR = build/Release/GNU-Linux-x86
MOC_DIR = 
RCC_DIR = 
UI_DIR = 
QMAKE_CC = gcc
QMAKE_CXX = g++
DEFINES += 
INCLUDEPATH += /usr/include/boost
INCLUDEPATH += /usr/include/qt5
INCLUDEPATH += /usr/include/qwt
LIBS += -lboost_regex
LIBS += /usr/lib/libqwt-qt5.so.6
QMAKE_CXXFLAGS += -std=c++17
#
TARGET = linssid
target.path = /usr/sbin
INSTALLS += target
targetexec.path = /usr/bin
targetexec.files=linssid-pkexec
INSTALLS += targetexec
dtop.path = /usr/share/applications
dtop.files = linssid.desktop
INSTALLS += dtop
icons.path = /usr/share/pixmaps
icons.files = *.png *.svg
INSTALLS += icons
data.path = /usr/share/linssid
data.files = oui.datc linssid-pause.png linssid-start.png linssid-filter.png
INSTALLS += data
policy.path = /usr/share/polkit-1/actions
policy.files = com.warsev.pkexec.linssid.policy
INSTALLS += policy

