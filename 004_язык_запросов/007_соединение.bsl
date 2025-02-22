// =========================== СОЕДИНЕНИЯ ===========================

// Перекрестное соединение - все возможные комбинации соединяемых таблиц
ЗапросПерекрестноеСоединение.Текст = 
	"
	|ВЫБРАТЬ
	|	Справочник.Клиенты.Наименование,
	|	Справочник.Клиенты.ЛюбимыйЦвет,
	|	Справочник.Ассоциации.Наименование,
	|	Справочник.Ассоциации.Цвет
	|ИЗ
	|	Справочник.Клиенты,
	|	Справочник.Ассоциации
	|";

// Внутреннее соединение - таблица содержащая общие поля из первой и второй исходной таблиц
ЗапросВнутреннееСоединение.Текст = 
	"
	|ВЫБРАТЬ
	|	Справочник.Клиенты.Наименование,
	|	Справочник.Клиенты.ЛюбимыйЦвет,
	|	Справочник.Ассоциации.Наименование,
	|	Справочник.Ассоциации.Цвет
	|ИЗ
	|	Справочник.Клиенты,
	|	Справочник.Ассоциации
	|ГДЕ
	|	Справочник.Клиенты.ЛюбимыйЦвет = Справочник.Ассоциации.Цвет
	|";

ЗапросВнутреннееСоединениеДругоеНаписание.Текст = 
	"
	|ВЫБРАТЬ
	|	Справочник.Клиенты.Наименование,
	|	Справочник.Клиенты.ЛюбимыйЦвет,
	|	Справочник.Ассоциации.Наименование,
	|	Справочник.Ассоциации.Цвет
	|ИЗ
	|	Справочник.Клиенты
	|ВНУТРЕННЕЕ СОЕДИНЕНИЕ
	|	Справочник.Ассоциации
	|ГДЕ
	|	Справочник.Клиенты.ЛюбимыйЦвет = Справочник.Ассоциации.Цвет
	|";

// Левое внешнее соединение - возвращает все строки из левой таблицы и только соответствующие строки из правой таблицы
ЗапросЛевоеСоединение.Текст = 
	"
	|ВЫБРАТЬ
	|	Справочник.Клиенты.Наименование,
	|	Справочник.Клиенты.ЛюбимыйЦвет,
	|	Справочник.Ассоциации.Наименование,
	|	Справочник.Ассоциации.Цвет
	|ИЗ
	|	Справочник.Клиенты
	|ЛЕВОЕ СОЕДИНЕНИЕ
	|	Справочник.Ассоциации
	|ПО
	|	Справочник.Клиенты.ЛюбимыйЦвет = Справочник.Ассоциации.Цвет
	|";

// Правое внешнее соединение - возвращает все строки из правой таблицы и только соответствующие строки из левой таблицы 
ЗапросПравоеСоединение.Текст = 
	"
	|ВЫБРАТЬ
	|	Справочник.Клиенты.Наименование,
	|	Справочник.Клиенты.ЛюбимыйЦвет,
	|	Справочник.Ассоциации.Наименование,
	|	Справочник.Ассоциации.Цвет
	|ИЗ
	|	Справочник.Клиенты
	|ПРАВОЕ СОЕДИНЕНИЕ
	|	Справочник.Ассоциации
	|ПО
	|	Справочник.Клиенты.ЛюбимыйЦвет = Справочник.Ассоциации.Цвет
	|";

ЗапросЕдаКоторуюНиктоНеЛюбит.Текст = 
	"
	|ВЫБРАТЬ
	|	Еда.Наименование КАК ЕдаКоторуюНиктоНеЛюбит
	|ИЗ
	|	Справочник.Клиенты КАК Клиенты
	|ПРАВОЕ СОЕДИНЕНИЕ
	|	Справочник.Еда КАК Еда
	|ПО
	|	Клиенты.ЛюбимыйЦвет = Еда.Цвет
	|ГДЕ 
	|	Клиенты.Наименование ЕСТЬ NULL
	|";

ЗапросЦветаКоторыхНетСредиЕды.Текст =
	"
	|ВЫБРАТЬ
	|	Цвета.Наименование
	|ИЗ
	|	Справочник.Цвета КАК Цвета
	|ЛЕВОЕ СОЕДИНЕНИЕ
	|	Справочник.Еда КАК Еда
	|ПО
	|	Цвета.Ссылка = Еда.Цвет
	|ГДЕ 
	|	Еда.Наименование ЕСТЬ NULL
	|";

// Полное внешнее соединение - возвращает совмещенные результаты левого и правого соединений 
ЗапросПолноеСоединение.Текст = 
	"
	|ВЫБРАТЬ
	|	Справочник.Клиенты.Наименование,
	|	Справочник.Клиенты.ЛюбимыйЦвет,
	|	Справочник.Ассоциации.Наименование,
	|	Справочник.Ассоциации.Цвет
	|ИЗ
	|	Справочник.Клиенты
	|ПОЛНОЕ СОЕДИНЕНИЕ
	|	Справочник.Ассоциации
	|ПО
	|	Справочник.Клиенты.ЛюбимыйЦвет = Справочник.Ассоциации.Цвет
	|";

ЗапросПолноеСоединениеСПседонимами.Текст = 
	"
	|ВЫБРАТЬ
	|	К.Наименование КАК Клиент,
	|	К.ЛюбимыйЦвет КАК ЕгоЦвет,
	|	А.Наименование КАК Ассоциация,
	|	А.Цвет КАК ЕёЦвет
	|ИЗ
	|	Справочник.Клиенты КАК К
	|ПОЛНОЕ СОЕДИНЕНИЕ
	|	Справочник.Ассоциации КАК А
	|ПО
	|	Справочник.Клиенты.ЛюбимыйЦвет = Справочник.Ассоциации.Цвет
	|";

ЗапросПолноеСоединениеСПседонимамиИПроверкойНаNULL.Текст = 
	"
	|ВЫБРАТЬ
	|	ЕСТЬNULL(К.Наименование, " ") КАК Клиент,
	|	ЕСТЬNULL(К.ЛюбимыйЦвет, ЗНАЧЕНИЕ(Справочник.Цвета.ПустаяСсылка)) КАК ЕгоЦвет
	|	ЕСТЬNULL(А.Наименование, " ") КАК Ассоциация,
	|	ЕСТЬNULL(А.Цвет, " ") КАК ЕёЦвет
	|ИЗ
	|	Справочник.Клиенты КАК К
	|ПОЛНОЕ СОЕДИНЕНИЕ
	|	Справочник.Ассоциации КАК А
	|ПО
	|	Справочник.Клиенты.ЛюбимыйЦвет = Справочник.Ассоциации.Цвет
	|";

// Соединение более двух таблиц
ЗапросКлиентыИхАссоциацииИЛюбимыеПродукты.Текст = 
	"
	|ВЫБРАТЬ
	|	К.Наименование,
	|	К.ЛюбимыйЦвет,
	|	А.Наименование,
	|	А.Цвет,
	|	Е.Наименование,
	|	Е.Цвет
	|ИЗ
	|	Справочник.Клиенты КАК К
	|ВНУТРЕННЕЕ СОЕДИНЕНИЕ
	|	Справочник.Ассоциации КАК А
	|ПО 
	|	К.ЛюбимыйЦвет = А.Цвет
	|
	|ВНУТРЕННЕЕ СОЕДИНЕНИЕ
	|	Справочник.Еда КАК Е
	|ПО
	|	К.ЛюбимыйЦвет = Е.Цвет
	|";



	