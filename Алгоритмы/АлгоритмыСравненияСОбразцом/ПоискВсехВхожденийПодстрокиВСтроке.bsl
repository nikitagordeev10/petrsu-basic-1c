// Поиск всех вхождений подстроки в строке

Функция НайтиПозицию(Строка, Подстрока, НомерВхождения)
    Перем ДлинаСтроки, ДлинаПодстроки;
    ДлинаСтроки = СтрДлина(Строка);
    ДлинаПодстроки = СтрДлина(Подстрока);

    СчетчикВхождений = 0;

    // Проход по строке
    Для i = 1 По ДлинаСтроки - ДлинаПодстроки + 1 Цикл
        // Проверяем, совпадают ли символы
        Для j = 1 По ДлинаПодстроки Цикл
            Если Сред(Строка, i + j - 1, 1) <> Сред(Подстрока, j, 1) Тогда
                Прервать;
            КонецЕсли;
        КонецЦикла;

        // Если полное совпадение
        Если j > ДлинаПодстроки Тогда
            СчетчикВхождений = СчетчикВхождений + 1;

            // Если это искомое вхождение, возвращаем позицию
            Если СчетчикВхождений = НомерВхождения Тогда
                Возврат i - 1; // Индексация с нуля
            КонецЕсли;
        КонецЕсли;
    КонецЦикла;

    // Если не найдено, возвращаем -1
    Возврат -1;
КонецФункции


Процедура ПриНачалеРаботыСистемы()
    // Исходная строка и подстрока
    ИсходнаяСтрока = "абабвабаб";
    Подстрока = "аба";

    // Счетчик для поиска вхождений
    НомерВхождения = 1;

    Пока Истина Цикл
        // Ищем позицию очередного вхождения
        Позиция = НайтиПозицию(ИсходнаяСтрока, Подстрока, НомерВхождения);

        // Если вхождение найдено, выводим его позицию
        Если Позиция >= 0 Тогда
            Сообщить(Позиция);
            НомерВхождения = НомерВхождения + 1;
        Иначе
            // Если больше вхождений нет, выходим из цикла
            Прервать;
        КонецЕсли;
    КонецЦикла;
КонецПроцедуры
