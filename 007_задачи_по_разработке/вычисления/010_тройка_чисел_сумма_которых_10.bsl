Процедура ПриНачалеРаботыСистемы()

	Для Слогаемое1 = 1 По 9 Цикл
		Для Слогаемое2 = Слогаемое1 По 9 Цикл
			Для Слогаемое3 = Слогаемое2 По 9 Цикл
				Если Слогаемое1 + Слогаемое2 + Слогаемое3 = 10 Тогда
					Сообщить()(""+ Слогаемое1 + " + " + Слогаемое2 + " + " + Слогаемое3 + " = 10");
				КонецЕсли;
			КонецЦикла;
		КонецЦикла;
	КонецЦикла;

КонецПроцедуры