// Процедуры и функции
// Автор: Гордеев Никита, 2024

// ===========================  Процедуры =========================== 

Процедура П1(ПараметрПереданныйПоСсылке)
    // изменяем значение и внутри и снаружи
    ПараметрПереданныйПоСсылке = 25;
КонецПроцедуры

Процедура П2(Знач ПараметрПереданныйПоЗначению)
 
    // изменяем значение только внутри процедуры
    ПараметрПереданныйПоЗначению = 25;
 
КонецПроцедуры

Процедура П3(Параметр)

    // меняем первый элемент массива
    Параметр[0] = 25;
 
    // теперь в массиве числа: 25 2
 
КонецПроцедуры

Процедура П4(Имя = "Сергей", Отчество, Фамилия = "не задано")
 
    Сообщить(Имя + " " + Отчество + " " + Фамилия);
 
КонецПроцедуры

// ===========================  Функции =========================== 

// Функция выполняет сложение двух чисел и возвращает результат
//
// Параметры:
// Число1 - Число - первое число для сложения.
// Число2 - Число - второе число для сложения.
//
// Возвращаемое значение:
// Число - результат сложения двух чисел.
//
// Пример:
// Результат = СложитьИВозвратить(5, 10); // Вернет 15
Функция СложитьИВозвратить(Число1, Число2)
    Результат = Число1 + Число2; // Выполняем сложение
    Возврат Результат; // Возвращаем результат сложения
КонецФункции

 
Процедура ПриНачалеРаботыСистемы()
    // =========================== передать в процедуру параметр по ссылке ===========================
    А = 1; // сейчас А равно 1
    П1(А); // а после вызова процедуры уже 25

    // ===========================  передать в процедуру параметр по значению ===========================
    А = 1; // сейчас А равно 1
    П2(А); // после вызова процедуры А по-прежнему равно 1

    // ===========================  передать в процедуру массив по значению ===========================

    Числа = Новый Массив(); // в массиве числа: 1 2
    Числа.Добавить(1);
    Числа.Добавить(2);

    // создаём копию массива
    КопияЧисел = Новый СписокЗначений;
    КопияЧисел.ЗагрузитьЗначения(Числа);
    КопияЧисел = КопияЧисел.ВыгрузитьЗначения();
 
    П3(КопияЧисел); // вызываем процедуру, меняющую переданный массив

    // ===========================  параметра процедуры установить значение по умолчанию ===========================

    П4("Вадим", "Иванович", "Сидоров"); // Вадим Иванович Сидоров
    П4("Вадим", "Иванович"); // Вадим Иванович не задано
    П4(, "Иванович"); // Сергей Иванович не задано
    
    // =========================== вернуть значение из функции ===========================

    А = 5;
    Б = 3;
    РезультатСложения = СложитьИВозвратить(А, Б);
    Сообщить("Результат функции: " + Строка(РезультатСложения));



КонецПроцедуры

