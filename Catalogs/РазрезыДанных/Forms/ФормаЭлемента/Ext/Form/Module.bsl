﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Если Не ПустаяСтрока(Объект.ЦветXML) Тогда
		Элементы.ЦветXML.ЦветФона = СериализаторXDTO.XMLЗначение(Тип("Цвет"), Объект.ЦветXML);
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Процедура ЦветXMLНажатие(Элемент)
	ДиалогВыбораЦвета = Новый ДиалогВыбораЦвета;
	ДиалогВыбораЦвета.Цвет = Элементы.ЦветXML.ЦветФона;
	Оповещение = Новый ОписаниеОповещения("ВыборЦветаЗавершение", ЭтотОбъект);
	ДиалогВыбораЦвета.Показать(Оповещение);
КонецПроцедуры

&НаКлиенте
Процедура ВыборЦветаЗавершение(Результат, ДополнительныеПараметры) Экспорт
	Если Не Результат = Неопределено Тогда
		Элементы.ЦветXML.ЦветФона = Результат;
		Объект.ЦветXML = СериализаторXDTO.XMLСтрока(Результат);
	КонецЕсли;
КонецПроцедуры
