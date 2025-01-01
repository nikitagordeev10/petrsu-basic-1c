// Подсчет количества цифр
// Автор: Гордеев Никита, 2024

Функция НайтиКоличествоЦифр(Знач Число)
    // Если число равно 0, возвращаем 1
    Если Число = 0 Тогда
        Возврат 1;
    КонецЕсли;

    // Переменная для подсчета количества цифр
    Количество = 0;

    // Пока число не равно 0
    Пока Число <> 0 Цикл
        // Увеличиваем счетчик
        Количество = Количество + 1;
        
        // Убираем последнюю цифру числа
        Число = Цел(Число / 10);
    КонецЦикла;

    // Возвращаем количество цифр
    Возврат Количество;
КонецФункции

Процедура ПриНачалеРаботыСистемы()
    // Исходное число
    Число = 98562;

    // Вызов процедуры для подсчета количества цифр
    КоличествоЦифр = НайтиКоличествоЦифр(Число);

    // Вывод результата
    Сообщить("Количество цифр в числе " + Число + " = " + Строка(КоличествоЦифр));
КонецПроцедуры
