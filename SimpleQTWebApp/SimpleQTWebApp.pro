# This project demonstrates how to use QtWebAppLib by including the
# sources into this project.

TARGET = SimpleQTWebApp
TEMPLATE = app
QT = core network serialbus websockets
CONFIG += console

HEADERS += \
           src/bizcom/modbus_dataacquire/modbus_dataacquire_controller.h \
           src/bizcom/modbus_dataacquire/modbus_dataacquire.h \
           src/requestmapper.h \
           src/controller/dumpcontroller.h \
           src/controller/templatecontroller.h \
           src/controller/formcontroller.h \
           src/controller/fileuploadcontroller.h \
           src/controller/sessioncontroller.h

SOURCES += src/main.cpp \
           src/bizcom/modbus_dataacquire/modbus_dataacquire_controller.cpp \
           src/bizcom/modbus_dataacquire/modbus_dataacquire.cpp \
           src/requestmapper.cpp \
           src/controller/dumpcontroller.cpp \
           src/controller/templatecontroller.cpp \
           src/controller/formcontroller.cpp \
           src/controller/fileuploadcontroller.cpp \
           src/controller/sessioncontroller.cpp

OTHER_FILES += etc/* etc/docroot/* etc/templates/* etc/ssl/* logs/* ../readme.txt

#---------------------------------------------------------------------------------------
# The following lines include the sources of the QtWebAppLib library
#---------------------------------------------------------------------------------------

include(../QtWebApp/logging/logging.pri)
include(../QtWebApp/httpserver/httpserver.pri)
include(../QtWebApp/templateengine/templateengine.pri)
include(../AppFramework/msgbus/msgbus.pri)
include(../AppFramework/wellknown/wellknown.pri)
# Not used: include(../QtWebApp/qtservice/qtservice.pri)

