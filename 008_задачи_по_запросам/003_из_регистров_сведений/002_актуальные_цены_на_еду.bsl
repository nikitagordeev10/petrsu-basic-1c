ЗапросАктуальныеЦеныНаЕдуДляКаждогоКлиента.Текст = 
	"
	|ВЫБРАТЬ
	|	ЦеныСрезПоследних.Клиент.Наименование КАК Клиент,
	|	ЦеныСрезПоследних.Еда.Наименование КАК Еда,
	|	ЦеныСрезПоследних.Цена
	|ИЗ
	|	РегистрСведений.ЦенаНаЕдуДляКлиентов.СрезПоследних() КАК ЦеныСрезПоследних
	|УПОРЯДОЧИТЬ ПО
	|	Клиент ВОЗР,
	|	ЕДА ВОЗР
	|ИТОГИ ПО
	|	ЦеныСрезПоследних.Клиент
	|";