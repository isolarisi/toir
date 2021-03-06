﻿#encoding: utf-8
#language: ru

Функционал: Заполнение документа Отчет по материальным затратам (К00000000069)
	Как Мастер участка, ответственный за формирование отчета по материальным затратам
	Я хочу зарегистрировать документом Отчет по материальным затратам данные о номенклатруре, по которой я отчитываюсь в регистре Фактические материальные затраты по ремонтам (АФМ)
	Чтобы Учесть номенклатуру, по которой я предоставил отчет в бухаглтерию для расчета затрат
	
Контекст:
	Дано Выполнена начальная инициализация данных по макету "ОтчетПоМатериальнымЗатратам" 

Сценарий: Проведение документа
	Когда В системе есть заполненный документ Акт выполнения работ (АФМ) с номером "TO0000001" от "25.08.2016 0:00:00"
    И В системе есть документ Отчет по материальным затратам (АФМ) с номером "TO0000001" от "02.09.2016 10:37:08"
	И Пользователь проводит документ
	Тогда Таблица проводок регистра Фактические материальные затраты по ремонтам (АФМ) стала равной:
|ВидДвижения|Период|Ремонт|ПериодРемонта|Номенклатура|ЕдиницаИзмерения|Количество|
|Расход|02.09.2016 10:37:08|Плановый ремонт TO0000000000002 от 31.07.2016 0:00:00|Июль 2016 г.|Ветошь|кг|0,25|
|Расход|02.09.2016 10:37:08|Плановый ремонт TO0000000000002 от 31.07.2016 0:00:00|Июль 2016 г.|Крылатка|шт|1|
|Расход|02.09.2016 10:37:08|Плановый ремонт TO0000000000002 от 31.07.2016 0:00:00|Июль 2016 г.|Паронит ПОН Б 3,0 мм|кг|0,5|
|Расход|02.09.2016 10:37:08|Плановый ремонт TO0000000000002 от 31.07.2016 0:00:00|Июль 2016 г.|Торцовое уплотнение|шт.|1|