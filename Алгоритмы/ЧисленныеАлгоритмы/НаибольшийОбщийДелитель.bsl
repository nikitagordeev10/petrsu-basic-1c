// наибольший общий делитель двух чисел

Функция НОД(a, b) 
    // Найти минимальное из a и b
    Результат = ?(a < b, a, b);

    // Цикл для нахождения НОД
    Пока Результат > 0 Цикл
        // Проверить, делятся ли оба числа на Результат
        Если (a % Результат = 0) И (b % Результат = 0) Тогда
            Прервать; // Найден НОД
        КонецЕсли;
        Результат = Результат - 1; // Уменьшаем Результат
    КонецЦикла;

    // Возврат НОД
    Возврат Результат;
КонецФункции

Процедура ПриНачалеРаботыСистемы()
    // Два числа для нахождения НОД
    a = 36;
    b = 60;

    // Вычисление НОД
    РезультатНОД = НОД(a, b);

    // Вывод результата
    Сообщить("НОД чисел " + Строка(a) + " и " + Строка(b) + " равен " + Строка(РезультатНОД));
КонецПроцедуры
