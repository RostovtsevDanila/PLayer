#pragma once
#include <QObject>
#include <QAbstractListModel>
#include <QStringList>
#include <QString>
#include "viewdir.h"

class TestModel : public QAbstractListModel
{
	Q_OBJECT

public:
	enum Roles {														//enum - перечисляемый тип
		ColorRole = Qt::UserRole + 1,
		TextRole
	};

	TestModel (QObject *parent = nullptr);

	virtual int rowCount(const QModelIndex &parent) const;
	virtual QVariant data(const QModelIndex &index, int role) const;	//QVariant - для универсальности
	virtual QHash<int, QByteArray> roleNames() const;					//Хэш-таблица

	Q_INVOKABLE void add();

private:
	QStringList m_data;
};
