// Условные операторы
// Автор: Гордеев Никита, 2024

Процедура ПриНачалеРаботыСистемы()
	ПеременнаяЧисло = 42;
	
	// Оператор Если
	Если ПеременнаяЧисло > 10 Тогда
		Сообщить("Число больше 10");
	Иначе
		Сообщить("Число меньше или равно 10");
	КонецЕсли;
	
	Если ПеременнаяЧисло >= 1 Тогда
		если ПеременнаяЧисло > 100 тогда
			Сообщить("Число больше 100");
		ИнАчЕеСлИ ПеременнаяЧисло > 50 ТоГдА
			Сообщить("Число больше 50, но меньше или равно 100");
		ElsIf ПеременнаяЧисло > 25 Then
			Сообщить("Число больше 25, но меньше или равно 50");
		ИначеЕсли ПеременнаяЧисло > 10 Тогда
			Сообщить("Число больше 10, но меньше или равно 25");
		Иначе
			Сообщить("Число больше или равно 1, но меньше или равно 10");
		КонецЕсли;
	КонецЕсли;

	// Тернарный оператор
	ПеременнаяЧисло = ?(ПеременнаяЧисло = 42, 1, 2);
	Сообщить("Число: " + ПеременнаяЧисло);
	
КонецПроцедуры