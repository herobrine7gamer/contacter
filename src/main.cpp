/*
    SPDX-License-Identifier: GPL-2.0-or-later
    SPDX-FileCopyrightText: 2022 HEROBRINE7GAMER <tapermeerkat77@gmail.com>
*/

#include <QApplication>
#include <QQmlApplicationEngine>
#include <QUrl>
#include <QtQml>

#include "about.h"
#include "app.h"
#include "version-contacter.h"
#include <KAboutData>
#include <KLocalizedContext>
#include <KLocalizedString>

#include "contacterconfig.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    QCoreApplication::setOrganizationName(QStringLiteral("KDE"));
    QCoreApplication::setApplicationName(QStringLiteral("Contacter"));

    KAboutData aboutData(
                         // The program name used internally.
                         QStringLiteral("Contacter"),
                         // A displayable program name string.
                         i18nc("@title", "Contacter"),
                         // The program version string.
                         QStringLiteral(CONTACTER_VERSION_STRING),
                         // Short description of what the app does.
                         i18n("A cross-platform application to store contacts."),
                         // The license this code is released under.
                         KAboutLicense::GPL,
                         // Copyright Statement.
                         i18n("(c) 2022"));
    aboutData.addAuthor(i18nc("@info:credit", "HEROBRINE7GAMER"), i18nc("@info:credit", "Author Role"), QStringLiteral("tapermeerkat77@gmail.com"), QStringLiteral("https://yourwebsite.com"));
    KAboutData::setApplicationData(aboutData);

    QQmlApplicationEngine engine;

    auto config = ContacterConfig::self();

    qmlRegisterSingletonInstance("org.kde.Contacter", 1, 0, "Config", config);

    AboutType about;
    qmlRegisterSingletonInstance("org.kde.Contacter", 1, 0, "AboutType", &about);

    App application;
    qmlRegisterSingletonInstance("org.kde.Contacter", 1, 0, "App", &application);

    engine.rootContext()->setContextObject(new KLocalizedContext(&engine));
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    return app.exec();
}
