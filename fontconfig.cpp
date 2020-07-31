#include "fontconfig.h"

#include <QQmlApplicationEngine>
#include <QFontDatabase>
#include <QDebug>

void Font::init(QQmlApplicationEngine& engine) {
    QFontDatabase fontDatabase;
    if (fontDatabase.addApplicationFont(":/QtFonts/font/fontello.ttf") == -1) {
#ifndef QT_NO_DEBUG
        qWarning() << "Failed to load fontello.ttf";
#else
        Q_ASSERT(false);
        return;
#endif
    }
    engine.addImportPath(":/");
}
