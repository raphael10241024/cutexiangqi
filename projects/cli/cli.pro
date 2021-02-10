TARGET = CUTEXIANGQI-cli
DESTDIR = $$PWD

include(../lib/lib.pri)
include(../lib/libexport.pri)

CUTEXIANGQI_CLI_VERSION = 1.2.0

macx-xcode {
    DEFINES += CUTEXIANGQI_CLI_VERSION=\"$$CUTEXIANGQI_CLI_VERSION\"
} else {
    OBJECTS_DIR = .obj/
    MOC_DIR = .moc/
    RCC_DIR = .rcc/
    DEFINES += CUTEXIANGQI_CLI_VERSION=\\\"$$CUTEXIANGQI_CLI_VERSION\\\"
}

win32 {
    CONFIG += console
}

!win32-msvc* {
	QMAKE_CXXFLAGS += -Wextra
}

mac {
    CONFIG -= app_bundle
}

QT = core

# Code
include(src/src.pri)

# Resources
include(res/res.pri)
