#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext> //Из видоса
#include "TestModel.h" //Из видоса

int main(int argc, char *argv[])
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

	QGuiApplication app(argc, argv);

	QQmlApplicationEngine engine;

	qmlRegisterType<TestModel>("com.company.TestModel", 1, 0, "TestModel"); //Из видоса

	const QUrl url(QStringLiteral("qrc:/main.qml"));
	QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
					 &app, [url](QObject *obj, const QUrl &objUrl) {
		if (!obj && url == objUrl)
			QCoreApplication::exit(-1);
	}, Qt::QueuedConnection);
	engine.load(url);

	return app.exec();
}
