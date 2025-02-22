Процедура АнализироватьТекст(ИсходныйТекст)
	
	СписокЗнаковПрепинания = "`~!@#$%^&*()-=_+\|[]{};':\"",.<>/?";
	
	КоличествоПробелов = 0;
	КоличествоЗнаковПрепинания = 0;
	КоличествоСлов = 0;
	ВнутриСлова = Ложь;
	
	Для Индекс = 1 По СтрДлина(ИсходныйТекст) Цикл
		ТекущийСимвол = Сред(ИсходныйТекст, Индекс, 1);
		
		Если ТекущийСимвол = " " Или СтрНайти(СписокЗнаковПрепинания, ТекущийСимвол) > 0 Тогда			
			Если ВнутриСлова Тогда
				КоличествоСлов = КоличествоСлов + 1;
			КонецЕсли;
			ВнутриСлова = Ложь;
			
			Если ТекущийСимвол = " " Тогда 
				КоличествоПробелов = КоличествоПробелов + 1;
			Иначе 
				КоличествоЗнаковПрепинания = КоличествоЗнаковПрепинания + 1;
			КонецЕсли;
		Иначе
			ВнутриСлова = Истина;
		КонецЕсли;
	КонецЦикла;
	
	Если ВнутриСлова Тогда 
		КоличествоСлов = КоличествоСлов + 1;
	КонецЕсли;
	
	Сообщить("Количество пробелов: " + КоличествоПробелов);
	Сообщить("Количество знаков препинания: " + КоличествоЗнаковПрепинания);
	Сообщить("Количество слов: " + КоличествоСлов);
КонецПроцедуры

Процедура ПриНачалеРаботыСистемы()
	ВходнойТекст = "";
	ВвестиСтроку(ВходнойТекст);
	АнализироватьТекст(ВходнойТекст);
КонецПроцедуры