QT       += core gui

win32{
DESTDIR = ../bin_win
}
unix{
DESTDIR = ../bin_linux
}

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    MainWindow.cpp

HEADERS += \
    HttpApi/Example.h \
    MainWindow.h

FORMS += \
    MainWindow.ui

# HttpApi
QT += network websockets

SOURCES += \
    HttpApi/Example.cpp \
    HttpApi/HttpApi.cpp \
    HttpApi/MySocketClient.cpp \
    HttpApi/MySocketServer.cpp \
    HttpApi/SimpleClient.cpp \
    HttpApi/SimpleServer.cpp

HEADERS += \
    HttpApi/Example.h \
    HttpApi/HttpApi.h \
    HttpApi/MySocketClient.h \
    HttpApi/MySocketServer.h \
    HttpApi/SimpleClient.h \
    HttpApi/SimpleServer.h

TRANSLATIONS += \
    HttpApi_Qt_zh_CN.ts

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
