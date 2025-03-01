// Тип данных число
// Автор: Гордеев Никита, 2024

Процедура ПриНачалеРаботыСистемы()
	
	// =========================== инициализировать число  =========================== 

	ПеременнаяЧисло = 42;  
	Сообщить("Число: " + ПеременнаяЧисло);

	// =========================== красивый вывод  =========================== 

	// вывести число без пробелов
	Сообщить(Формат(1000000, "ЧГ=0")); // 1000000

	// =========================== операции над числами ===========================
	// округлить до первого знака после запятой, второй знак < 5
    Сообщить(Окр(321.123, 1)); // 321.1

	// округлить до первого знака после запятой, второй знак < 5
    Сообщить(Окр(321.123, 1)); // 321.1

	// если при округлении до N-го знака
    // (N + 1)-й знак равен 5, а все последующие
    // знаки равны нулю, то результат округления
    // будет зависеть от третьего параметра функции Окр
    Сообщить(Окр(100.350, 1, РежимОкругления.Окр15как10)); // вернёт 100.3
    Сообщить(Окр(100.350, 1, РежимОкругления.Окр15как20)); // вернёт 100.4

	// возвести число в степень
	Сообщить(Pow(10, 3)); // 10^3 = 1000

	// вычислить остаток от деления
	Сообщить(5 % 3); // 2

	// извлечь квадратный корень из числа
	Сообщить(Sqrt(25)); // 5

	// вычислить максимальное из нескольких значений
	Сообщить(Макс(1, 2, 3)); // 3

	// вычислить минимальное из нескольких значений
	Сообщить(Мин(1, 2, 3)); // 1

	// вычислить выражение из строки
	Сообщить(Вычислить("Sin(3.14)")); // ~0

	// =========================== Тригонометрия ===========================

	Пи = 3.14;
    E = 2.718; // Число Эйлера

    Сообщить(Cos(Пи / 2)); // ~0
    Сообщить(ACos(0)); // ~1,57
 
    Сообщить(Sin(Пи / 2)); // ~1
    Сообщить(ASin(1)); // ~1,57
 
    Сообщить(Sin(Пи / 2) * Sin(Пи / 2) + Cos(Пи / 2) * Cos(Пи / 2)); // ~1
 
    Сообщить(Sin(Пи / 3) / Cos(Пи / 3)); // 1.73
    Сообщить(Tan(Пи / 3)); // 1.73
    Сообщить(Tan(ATan(1.73))); // 1.73

	// экспонента - возведение числа эйлера в степень X	
	Сообщить(Pow(E, 2)); // 7,389
    Сообщить(Exp(2)); // 7,389

	// натуральный логарифм - степень в которую надо
    // возвести число эйлера e, чтобы получить X
	Сообщить(Log(9)); // 2,197
    Сообщить(Pow(E, 2.197)); // ~9 

	// десятичный логарифм - степень в которую надо
    // возвести число 10, чтобы получить X
    Сообщить(Log10(1000)); // 3
    Сообщить(Pow(10, 3)); // 1000
КонецПроцедуры
