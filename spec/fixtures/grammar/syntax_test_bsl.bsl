// SYNTAX TEST "source.bsl"
#Область ИмяОбласти
// <- keyword.other.section.bsl
// ^ keyword.other.section.bsl
//       ^ entity.name.section.bsl

Перем А Экспорт;
// <- storage.type.var.bsl
//    ^ variable.bsl
//      ^ storage.modifier.bsl

#Если Сервер Тогда
// <- keyword.other.preprocessor.bsl
//    ^^^^^^ keyword.other.preprocessor.bsl

// Комментарий процедуры
// <- comment.line.double-slash.bsl
&НаСервере
// <- storage.modifier.directive.bsl
// ^ storage.modifier.directive.bsl
Процедура ИмяПроцедуры(
// <- storage.type.bsl
//        ^ entity.name.function.bsl
//                    ^ punctuation.bracket.begin.bsl
    Знач ПараметрСКонстантой,
//  ^ storage.modifier.bsl
//       ^ variable.parameter.bsl
//                          ^ keyword.operator.bsl
    ОбычныйПараметр,
//  ^ variable.parameter.bsl
    ПараметрСНекорректнымЗначением = Нелегальщина,
//                                  ^ not:invalid.illegal.bsl
//                                   ^ invalid.illegal.bsl
    ПараметрСНекорректнымЗначением =НелегальщинаБезПробела,
//                                  ^ invalid.illegal.bsl
//                                                        ^ keyword.operator.bsl
    ПараметрСДефолтнымЧисловымЗначением = 0) Экспорт
//                                      ^ keyword.operator.assignment.bsl
//                                        ^ constant.numeric.bsl
//                                         ^ punctuation.bracket.end.bsl
//                                           ^ storage.modifier.bsl
    Б = "текст с экраннированной "" кавычкой" + "и конкатенаций""";
//       ^ string.quoted.double.bsl
//                               ^^ constant.character.escape.bsl
//                                 ^ not:constant.character.escape.bsl
//                                              ^ string.quoted.double.bsl
//                                                             ^^ constant.character.escape.bsl
//                                                               ^ not:constant.character.escape.bsl
//                                                                ^ keyword.operator.bsl

    В = "многострочная
//      ^ string.quoted.double.bsl
    |строка
//  ^ string.quoted.double.bsl
    //|это комментарий
//      ^ comment.line.double-slash.bsl
    |// а это нет
//      ^ string.quoted.double.bsl
    |";
//   ^ string.quoted.double.bsl
//    ^ keyword.operator.bsl

    Г = "";
//      ^^ string.quoted.double.bsl

    ТекстЗапроса =
    "ВЫБРАТЬ
//  ^^ string.quoted.double.bsl
//   ^ keyword.control.sdbl
    |	Таблица.Поле КАК Поле,
    |	МАКСИМУМ(Таблица.Поле2) КАК Поле2
    |ИЗ
    |	Таблица КАК Таблица
    |ГДЕ
    |	Таблица.Поле = 0
    |	И Таблица.Поле <> ""Строка""
    |	И ВЫРАЗИТЬ(Таблица.Поле КАК СТРОКА) <> """"
    |	И Таблица.Поле <> ""Строка с экраннированной """" кавычкой""
    //|Закомментированная строка
//  ^ string.quoted.double.bsl comment.line.double-slash.bsl
    |// Закомметированная строка внутри запроса с кавычками ""ТЕКСТ""
//  ^ string.quoted.double.bsl
//  ^ not:comment.line.double-slash.sdbl
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.sdbl
    |СГРУППИРОВАТЬ ПО
    |	Поле
    //|//АВТОУПОРЯДОЧИВАНИЕ";
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.bsl
    |//АВТОУПОРЯДОЧИВАНИЕ";
//  ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.bsl
//  ^ not:comment.line.double-slash.sdbl
//   ^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.sdbl
//                       ^ not:comment.line.double-slash.sdbl
//                        ^ keyword.operator.bsl

    // Проверка на корректность обработки FirstLineMatch и #include: source.sdbl
    СтрокаСоСловомВыбрать = "Some selected text";
//                                ^^^^^^ not:keyword.control.sdbl

    Число = 0.0 * 100;
//  ^ not:support.function.bsl
//          ^^^ constant.numeric.bsl
//              ^ keyword.operator.arithmetic.bsl

    Дата = '00010101000000';
//         ^^^^^^^^^^^^^^^^ constant.other.date.bsl
    КороткаяДата = '00010101';
//                 ^^^^^^^^^^ constant.other.date.bsl
    ДатаСРазделителями = '0001-01-01T00:00:00';
//                       ^^^^^^^^^^^^^^^^^^^^^ constant.other.date.bsl
    КороткаяДатаСРазделителями = '0001/01/01';
//                               ^^^^^^^^^^^^ constant.other.date.bsl
    СтрокаСДатойВнутри = "Литерал типа Дата: '00010101'";
//                                          ^^^^^^^^^^^^ string.quoted.double.bsl
//                                           ^^^^^^^^^^ not:constant.other.date.bsl

    Если А = 0 И НЕ Число <= 0 Тогда
//  ^ keyword.control.conditional.bsl
//         ^ keyword.operator.comparison.bsl
//           ^ constant.numeric.bsl
//             ^ keyword.operator.logical.bsl
//               ^^ keyword.operator.logical.bsl
//                        ^^ keyword.operator.comparison.bsl
//                             ^ keyword.control.conditional.bsl

        ОбычныйПараметр = Истина;
//                        ^ constant.language.bsl
    Иначе
//  ^ keyword.control.conditional.bsl
        ОбычныйПараметр = Ложь;
    КонецЕсли;
//  ^ keyword.control.conditional.bsl

    Пока ЗначениеЗаполнено(Б) Цикл
//  ^ keyword.control.repeat.bsl
//       ^ support.function.bsl
//                        ^ punctuation.bracket.begin.bsl
//                         ^ not:punctuation.bracket.begin.bsl
//                          ^ punctuation.bracket.end.bsl
        Прервать;
//      ^ keyword.control.bsl
    КонецЦикла;
//  ^ keyword.control.repeat.bsl

    НевстроеннаяПроцедура();
//  ^ not:support.function.bsl

    НовыйОбъект = Новый ТаблицаЗначений;
//                ^^^^^ support.function.bsl
//                     ^ not:support.function.bsl
    НовыйОбъектСкобка = Новый("ТаблицаЗначений");
//                      ^^^^^ support.function.bsl
//                           ^ not:support.function.bsl

    ПрефиксЗначениеЗаполненоПостфикс = "";
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ not:support.function.bsl

    // Проверка на корректность обработки начала и конца слова
    Объект.Сообщить().Если().Цикл().Новый;
//         ^^^^^^^^                 ^^^^^ not:support.function.bsl
//                    ^^^^ not:keyword.control.conditional.bsl
//                           ^^^^ not:keyword.control.repeat.bsl

    // Проверка подсветки глобальных свойств с точкой
    Справочники.ИмяСправочника.СоздатьЭлемент();
//  ^ support.class.bsl
    А = ХранилищеПользовательскихНастроекДинамическихСписков.Сохранить();
//      ^ support.variable.bsl

    А = 0;
//  ^ variable.assignment.bsl
//    ^ keyword.operator.assignment.bsl

    Б = А = 0;
//  ^ variable.assignment.bsl
//    ^ keyword.operator.assignment.bsl
//        ^ keyword.operator.comparison.bsl

    Если А = Б Тогда
//       ^ not:variable.assignment.bsl
//         ^ keyword.operator.comparison.bsl
    ИначеЕсли ЗначениеЗаполнено(А) = ЗначениеЗаполнено(Б) Тогда
//            ^ not:variable.assignment.bsl
//                                 ^ keyword.operator.comparison.bsl
    КонецЕсли;

    // TODO:
//     ^^^^	storage.type.class.todo

КонецПроцедуры
// <- storage.type.bsl

Процедура НевстроеннаяПроцедура()
    Возврат;
//  ^ keyword.control.bsl
КонецПроцедуры

&Перед("ПередЗаписью")
// <- storage.type.annotation.bsl
// ^^^ storage.type.annotation.bsl
//     ^^^^^^^^^^^^^^ string.quoted.double.bsl
Процедура Расш1_ПередЗаписью()

КонецПроцедуры

#КонецЕсли
// <- keyword.other.preprocessor.bsl
// ^ keyword.other.preprocessor.bsl

#КонецОбласти
// <- keyword.other.section.bsl
// ^ keyword.other.section.bsl
