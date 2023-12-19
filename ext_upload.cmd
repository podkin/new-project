@chcp 65001

@rem обновление конфигурации основной разработческой ИБ без поддержки или на поддержке. по умолчанию в каталоге build/ib
@rem call vrunner update-dev --src src/cf --disable-support

@rem обновление конфигурации основной разработческой ИБ из хранилища. для включения раскомментируйте код ниже
@rem call vrunner loadrepo %*
@rem call vrunner updatedb %*

@rem собрать внешние обработчики и отчеты в каталоге build
@rem call vrunner compileepf src/epf/МояВнешняяОбработка build %*
@rem call vrunner compileepf src/erf/МойВнешнийОтчет build %*

@rem собрать расширения конфигурации внутри ИБ
@rem call vrunner compileext src/cfe/МоеРасширение МоеРасширение %*

@rem забрать расширение конфигурации из ИБ
@rem call vrunner unloadext build/cfe/Тест.cfe Тест %*

@rem Разборка расширения из конфигурации в исходники
call vrunner decompileext Тест src\cfe\Тест %*

@rem обновление в режиме Предприятие
@rem call vrunner run --command "ЗапуститьОбновлениеИнформационнойБазы;ЗавершитьРаботуСистемы;" --execute $runnerRoot\epf\ЗакрытьПредприятие.epf %*
