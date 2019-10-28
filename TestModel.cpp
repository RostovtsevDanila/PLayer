#include "TestModel.h"

TestModel::TestModel(QObject *parent) : QAbstractListModel (parent)
{
	ViewDir dir;
    dir.getHomeList();

    for (auto str: dir.rootList) {
		m_data.append(str);
	}
}

int TestModel::rowCount(const QModelIndex &parent) const
{
    if(parent.isValid()) {
		return 0;
	}

	return m_data.size();
}

QVariant TestModel::data(const QModelIndex &index, int role) const
{
    if(!index.isValid()) {
		return QVariant();
	}

    switch (role) {
	case ColorRole:
		return QVariant("#00AB6F");
	case TextRole:
		return m_data.at(index.row());
	default:
		return QVariant();
	}
}

QHash<int, QByteArray> TestModel::roleNames() const
{
	QHash<int, QByteArray> roles = QAbstractItemModel::roleNames();
	roles[ColorRole] = "color";
	roles[TextRole] = "text";

	return roles;
}

void TestModel::add()
{
	beginInsertRows (QModelIndex(), m_data.size(), m_data.size());
	m_data.append("new");
	endInsertRows();

	m_data[0] = QString("Size: %1").arg (m_data.size());
	QModelIndex index = createIndex (0, 0, static_cast<void *>(nullptr));
	emit dataChanged (index, index);
}
