######################################################################
# Automatically generated by qmake (2.01a) Sat Nov 12 13:08:01 2011
######################################################################

QWT_DIR=/home/bkubicek/software/qwt-6.0.1/
QEXTSERIAL_DIR=/home/bkubicek/git/qextserialport
QSERIALDEVICE_DIR=/home/bkubicek/software/qserialdevice-qserialdevice/


TEMPLATE = app
TARGET = 
DEPENDPATH += .
INCLUDEPATH += .
INCLUDEPATH += $$QEXTSERIAL_DIR/src/ 
INCLUDEPATH += $$QWT_DIR/src
INCLUDEPATH += $$QSERIALDEVICE_DIR/src/qserialdeviceenumerator
INCLUDEPATH += $$QSERIALDEVICE_DIR/src/qserialdevice

QMAKE_LIBDIR += $$QWT_DIR/lib/ /
QMAKE_LIBDOR += $$QEXTSERIAL_DIR/src/build/
QMAKE_LIBDIR += $$QSERIALDEVICE_DIR/src/build/release

# Input
HEADERS += mainwindow.h tab_pid.h tab_raw.h tab_eeprom.h tab_veltest.h
SOURCES += main.cpp mainwindow.cpp tab_pid.cpp  tab_raw.cpp tab_eeprom.cpp tab_veltest.cpp
#LIBS  += -lqextserialport -lqserialdevice -lqwt
LIBS += -lqwt
LIBS += libqextserialport.a
LIBS += -lqserialdevice 



win32 {
    LIBS += -lsetupapi -luuid -ladvapi32
}
unix:!macx {
    LIBS += -ludev
}

macx {
QWT_DIR=/usr/local/Cellar/qwt/6.0.1/lib/   #brew install qwt

TEMPLATE = app
TARGET = 
DEPENDPATH = .
INCLUDEPATH = .
INCLUDEPATH += $$QEXTSERIAL_DIR/src
INCLUDEPATH += $$QWT_DIR/qwt.framework/Headers/
INCLUDEPATH += $$QSERIALDEVICE_DIR/src/qserialdeviceenumerator
INCLUDEPATH += $$QSERIALDEVICE_DIR/src/qserialdevice

QMAKE_LIBDIR = $$QEXTSERIAL_DIR/src/build/
QMAKE_LIBDIR += $$QSERIALDEVICE_DIR/src/build/release

LIBS = $$QEXTSERIAL_DIR/src/build/libqextserialport.dylib
LIBS += -lqserialdevice 
LIBS += -F$$QWT_DIR -framework qwt -framework IOKit -framework Foundation

QMAKE_POST_LINK += QWT_DIR=$$QWT_DIR QEXTSERIAL_DIR=$$QEXTSERIAL_DIR ./postmake_osx.sh
}

