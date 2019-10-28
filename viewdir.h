#pragma once
#include <QDir>
#include <QStandardPaths>
#include <QString>
#include <iostream>

class ViewDir
{
public:
	ViewDir();

	void getHomeList();

	static void showRootDir();
	QStringList rootList;
};
