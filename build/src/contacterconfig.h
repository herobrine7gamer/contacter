// This file is generated by kconfig_compiler_kf5 from contacterconfig.kcfg.
// All changes you do to this file will be lost.
#ifndef CONTACTERCONFIG_H
#define CONTACTERCONFIG_H

#include <kconfigskeleton.h>
#include <QCoreApplication>
#include <QDebug>

class ContacterConfig : public KConfigSkeleton
{
  Q_OBJECT
  public:

    static ContacterConfig *self();
    ~ContacterConfig() override;

    /**
      Set Some setting description
    */
    static
    void setSomeSetting( bool v )
    {
      if (v != self()->mSomeSetting && !self()->isSomeSettingImmutable()) {
        self()->mSomeSetting = v;
        Q_EMIT self()->someSettingChanged();
      }
    }

    Q_PROPERTY(bool someSetting READ someSetting WRITE setSomeSetting NOTIFY someSettingChanged)
    Q_PROPERTY(bool isSomeSettingImmutable READ isSomeSettingImmutable CONSTANT)
    /**
      Get Some setting description
    */
    static
    bool someSetting()
    {
      return self()->mSomeSetting;
    }

    /**
      Is Some setting description Immutable
    */
    static
    bool isSomeSettingImmutable()
    {
      return self()->isImmutable( QStringLiteral( "someSetting" ) );
    }

    /**
      Get Some setting description default value
    */
    static
    bool defaultSomeSettingValue()
    {
        return defaultSomeSettingValue_helper();
    }


    enum {
      signalSomeSettingChanged = 0x1
    };

  Q_SIGNALS:
    void someSettingChanged();

  private:
    void itemChanged(quint64 flags);

  protected:
    ContacterConfig(QObject *parent = nullptr);
    friend class ContacterConfigHelper;


    // General
    bool mSomeSetting;
    static bool defaultSomeSettingValue_helper();

  private:
};

#endif

