// =========================== ГРУППИРОВКА (СГРУППИРОВАТЬ ПО)===========================

// ВЫБРАТЬ
// 	ГРУППИРОВОЧНОЕ ПОЛЕ,
// 	АГРЕГАТНАЯ ФУНКЦИЯ(ГРУППИРУЕМОЕ ПОЛЕ)
// ИЗ
// 	ТАБЛИЦА
// СГРУППИРОВАТЬ ПО
// 	ГРУППИРОВОЧНЫЕ ПОЛЯ	

// ВЫБРАТЬ
// 	ГРУППИРОВОЧНОЕ ПОЛЕ,
// ИЗ
// 	ТАБЛИЦА
// СГРУППИРОВАТЬ ПО
// 	ГРУППИРОВОЧНЫЕ ПОЛЯ	

// ВЫБРАТЬ
// 	АГРЕГАТНАЯ ФУНКЦИЯ(ГРУППИРУЕМОЕ ПОЛЕ)
// ИЗ
// 	ТАБЛИЦА
// СГРУППИРОВАТЬ ПО
// 	ГРУППИРОВОЧНЫЕ ПОЛЯ	


ЗапросАгрегатнаяФункцияСумма.Текст = 
	"ВЫБРАТЬ 
	|	Цвет,
	|	СУММА(Калорийность)
	|ИЗ
	|	Справочник.Еда
	|СГРУППИРОВАТЬ ПО
	|	Цвет";

ЗапросАгрегатнаяФункцияСреднее.Текст = 
	"ВЫБРАТЬ
	|	Цвет, 
	|	СРЕДНЕЕ(Калорийность)
	|ИЗ
	|	Справочник.Еда
	|СГРУППИРОВАТЬ ПО
	|	Цвет";

ЗапросАгрегатнаяФункцияМинимум.Текст = 
	"ВЫБРАТЬ 
	|	Цвет, 
	|	МИНИМУМ(Калорийность)
	|ИЗ 
	|	Справочник.Еда
	|СГРУППИРОВАТЬ ПО
	|	Цвет";

ЗапросАгрегатнаяФункцияМаксимум.Текст = 
	"ВЫБРАТЬ
	|	Цвет,
	|	МАКСИМУМ(Калорийность)
	|ИЗ
	|	Справочник.Еда
	|СГРУППИРОВАТЬ ПО 
	|	Цвет";

ЗапросАгрегатнаяФункцияКоличество.Текст = 
	"ВЫБРАТЬ
	|	Цвет,
	|	КОЛИЧЕСТВО(Калорийность)
	|ИЗ 
	|	Справочник.Еда
	|СГРУППИРОВАТЬ ПО
	|	Цвет";

ЗапросАгрегатнаяФункцияКоличествоРазличные.Текст = 
	"ВЫБРАТЬ 
	|	Цвет, 
	|	Количество(РАЗЛИЧНЫЕ Калорийность)
	|ИЗ
	|	Справочник.Еда
	|Сгруппировать ПО 
	|	Цвет";

ЗапросБезАгрегатнойФункции.Текст = 
	"ВЫБРАТЬ
	|	Вкус
	|ИЗ 
	|	Справочник.Еда
	|СГРУППИРОВАТЬ ПО
	|	Вкус";

ЗапросБезГруппировочныхПолей.Текст = 
	"ВЫБРАТЬ
	|	СУММА(Калорийность) КАК Сумма,
	|	СРЕДНЕЕ(Калорийность) КАК Среднее,
	|	МИНИМУМ(Калорийность) КАК Минимум,
	|	МАКСИМУМ(Калорийность) КАК Максимум,
	|	КОЛИЧЕСТВО(Калорийность) КАК Количество
	|ИЗ 
	|	Справочник.Еда";
	