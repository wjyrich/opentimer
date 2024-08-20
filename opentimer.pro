QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += $$files(src/*.cpp)

HEADERS += $$files(include/*.hpp)

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: #target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

target.path = $$PREFIX/bin
desktop.files = opentimer.desktop
desktop.path = $$PREFIX/share/applications/
icons.path = $$PREFIX/share/icons
icons.files = opentimer.png

INSTALLS += target desktop icons
RESOURCES += \
    resources.qrc

