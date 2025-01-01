// Проверка корректности госномера 
// Автор: Гордеев Никита, 2024

// ГОСТом для использования на знаках разрешены 12 букв кириллицы, имеющие графические аналоги в латинском алфавите — А, В, Е, К, М, Н, О, Р, С, Т, У и Х.
// https://ru.wikipedia.org/wiki/Регистрационные_знаки_транспортных_средств_в_России

Функция ПроверитьРегистрационныйЗнак(РегистрационныйЗнак)
    
    // Допустимые буквы для номерных знаков
    ВалидныеБуквы = "АВЕКМНОРСТУХ";
    ВалидныеЦифры = "0123456789";

    // Проверка длины номера
    Если СтрДлина(РегистрационныйЗнак) < 8 Или СтрДлина(РегистрационныйЗнак) > 9 Тогда
        Возврат Ложь;
    КонецЕсли;

    // Инициализация фрагментов
    ПерваяБуква = Сред(РегистрационныйЗнак, 1, 1);
    ТриЦифры = Сред(РегистрационныйЗнак, 2, 3);
    ДвеБуквы = Сред(РегистрационныйЗнак, 5, 2);
    КодРегиона = Сред(РегистрационныйЗнак, 7);

    // Проверка первой буквы
    Если СтрНайти(ВалидныеБуквы, ПерваяБуква) = 0 Тогда
        Возврат Ложь;
    КонецЕсли;

    // Проверка трех цифр
    Для Индекс = 1 По СтрДлина(ТриЦифры) Цикл
        ТекущийСимвол = Сред(ТриЦифры, Индекс, 1);
        Если СтрНайти(ВалидныеЦифры, ТекущийСимвол) = 0 Тогда
            Возврат Ложь;
        КонецЕсли;
    КонецЦикла;

    // Проверка двух букв после цифр
    Для Индекс = 1 По СтрДлина(ДвеБуквы) Цикл
        ТекущийСимвол = Сред(ДвеБуквы, Индекс, 1);
        Если СтрНайти(ВалидныеБуквы, ТекущийСимвол) = 0 Тогда
            Возврат Ложь;
        КонецЕсли;
    КонецЦикла;

    // Проверка кода региона (2 или 3 цифры)
    Если СтрДлина(КодРегиона) < 2 Или СтрДлина(КодРегиона) > 3 Тогда
        Возврат Ложь;
    КонецЕсли;

    Для Индекс = 1 По СтрДлина(КодРегиона) Цикл
        ТекущийСимвол = Сред(КодРегиона, Индекс, 1);
        Если СтрНайти(ВалидныеЦифры, ТекущийСимвол) = 0 Тогда
            Возврат Ложь;
        КонецЕсли;
    КонецЦикла;

    Возврат Истина;

КонецФункции

Процедура ПриНачалеРаботыСистемы()
    // Тестовые номера
    Номер1 = "А001АА10";
    Результат1 = ПроверитьРегистрационныйЗнак(Номер1);
    Сообщить("Номерной знак " + Номер1 + " валиден: " + Строка(Результат1));

    Номер2 = "А00АА10";
    Результат2 = ПроверитьРегистрационныйЗнак(Номер2);
    Сообщить("Номерной знак " + Номер2 + " валиден: " + Строка(Результат2));

    Номер3 = "А123БВ777";
    Результат3 = ПроверитьРегистрационныйЗнак(Номер3);
    Сообщить("Номерной знак " + Номер3 + " валиден: " + Строка(Результат3));

    Номер4 = "О777ОО777";
    Результат4 = ПроверитьРегистрационныйЗнак(Номер4);
    Сообщить("Номерной знак " + Номер4 + " валиден: " + Строка(Результат4));
КонецПроцедуры
