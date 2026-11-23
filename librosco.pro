TEMPLATE = lib
TARGET = librosco

CONFIG += dll
CONFIG += c99

VERSION = 3.0.0

DEFINES += LIBROSCO_EXPORT

INCLUDEPATH += . \
               src \
               $$OUT_PWD

HEADERS += \
    src/rosco.h \
    src/rosco_version.h

SOURCES += \
    src/setup.c \
    src/protocol.c

DESTDIR = bin
OBJECTS_DIR = build/obj
MOC_DIR = build/moc
RCC_DIR = build/rcc
UI_DIR = build/ui

win32 {
    QMAKE_LFLAGS += -static-libgcc
}

unix {
    LIBS += -lpthread
}

target.path = $$DESTDIR
INSTALLS += target
