#include "csc_registrator.h"

#include <QtQml/QtQml>



CSCRegistrator::~CSCRegistrator()
{
}


void CSCRegistrator::registerTypes(const char* uri)
{
    qmlRegisterType(QUrl("qrc:/CSC/CSCButton.qml"), uri, 1, 0, "CSCButton");
}

void CSCRegistrator::initEngine(QQmlEngine *engine)
{
}
