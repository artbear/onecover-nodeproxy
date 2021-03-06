Перем ИменаПапок;
Перем Разделитель;

Функция ПутьКонфигуратора(Модуль) Экспорт

	ЧастиИмен = СтрРазделить(Модуль, ".");

	
	НачальныйКаталог =  ИменаПапок.Получить(ЧастиИмен[0]);
	НачальныйКаталог = ЧастиИмен[0] + "s";

	//fexMe
	// Сообщить(НачальныйКаталог);
	Если СтрНайти(НачальныйКаталог, "-") > 0 Тогда
		Возврат "";
	КонецЕсли;	

	Если НачальныйКаталог = Неопределено Тогда
		Возврат "";
	КонецЕсли;	

	ПутьМетаданного = "";
	Если НЕ ПустаяСтрока(НачальныйКаталог) Тогда
		ПутьМетаданного = НачальныйКаталог + Разделитель + ЧастиИмен[1];
	КонецЕсли;

	Если ЧастиИмен[ЧастиИмен.ВГраница() - 2] = "Form" Тогда
		ПутьМетаданного = ПутьМетаданного + Разделитель +"Forms" + Разделитель + ЧастиИмен[ЧастиИмен.ВГраница() - 1];		
	КонецЕсли;	

	ПутьМетаданного = ПутьМетаданного + Разделитель + "Ext";

	Путь = ПутьМетаданного + Разделитель + ЧастиИмен[ЧастиИмен.ВГраница()] + ".bsl";

	Возврат Путь;

КонецФункции	


Процедура Инициализация()
	
	ИменаПапок = Новый Соответствие;
	ИменаПапок.Вставить("Catalog", "Catalogs");
	ИменаПапок.Вставить("Document", "Catalogs");
	ИменаПапок.Вставить("Configuration", "");
	ИменаПапок.Вставить("CommonModule", "CommonModules");
	ИменаПапок.Вставить("DataProcessor", "DataProcessors");
	ИменаПапок.Вставить("Report", "Reports");
	ИменаПапок.Вставить("InformationRegister", "InformationRegisters");
	ИменаПапок.Вставить("CommonForm", "CommonForms");

	Разделитель = ПолучитьРазделительПути();
КонецПроцедуры	

Инициализация();

