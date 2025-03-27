#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>//To manate ContextProperty
#include "runwaymanager.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);// Create an instance of the GUI application

    QQmlApplicationEngine engine;// Create a QML engine to load the interface

    // Register RunwayManager with QML
    RunwayManager runwayManager;
    engine.rootContext()->setContextProperty("runwayManager", &runwayManager);


    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("Airport_supp", "Main");

    return app.exec();
}
