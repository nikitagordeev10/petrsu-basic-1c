ЗапросНачальныеКонечныеОстаткиПоступлениеИПродажаЗаПериод.Текст = 
	"
	|ВЫБРАТЬ
	|	ОстаткиИОборотыЕды.Еда,
	|	ОстаткиИОборотыЕды.КоличествоНачальныйОстаток,
	|	ОстаткиИОборотыЕды.КоличествоПриход,
	|	ОстаткиИОборотыЕды.КоличествоРасход,
	|	ОстаткиИОборотыЕды.КоличествоКонечныйОстаток
	|ИЗ
	|	РегистрНакопления.ЗапасыЕды.Остатки(
	|		ДАТАВРЕМЯ(2014, 02, 01), ДАТАВРЕМЯ(2014, 03, 31), Период,,
	|	) КАК ОстаткиИОборотыЕды
	|УПОРЯДОЧИТЬ ПО
	|	ОстаткиИОборотыЕды.Еда.Наименование
	|";