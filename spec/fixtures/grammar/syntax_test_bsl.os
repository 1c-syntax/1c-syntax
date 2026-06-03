// SYNTAX TEST "source.bsl"
#native
// <- keyword.control.native.bsl

#stack
// <- keyword.control.native.bsl

#Использовать cmdline
// <- keyword.control.import.bsl

Процедура САннотированнымиПараметрами(

  	&АннотацияДляПараметра
//  ^^^ storage.type.annotation.bsl
  	Знач Парам1,
//  ^ storage.modifier.bsl
//       ^ variable.parameter.bsl
    &АннотацияДляПараметра
//  ^^^ storage.type.annotation.bsl
    &АннотацияДляПараметра1
//  ^^^ storage.type.annotation.bsl
    &АннотацияДляПараметра2(СПараметрами = 3, 4, 5)
//  ^^^ storage.type.annotation.bsl
//                         ^ punctuation.bracket.begin.bsl
//                          ^^^ variable.annotation.bsl
//                                       ^ keyword.operator.assignment.bsl
//                                         ^ constant.numeric.bsl
//                                          ^ keyword.operator.bsl
//                                            ^ constant.numeric.bsl
//                                                ^ punctuation.bracket.end.bsl
    Знач Парам2,
//  ^ storage.modifier.bsl
//       ^ variable.parameter.bsl
    Парам3,
//  ^ variable.parameter.bsl
    Парам4 = Неопределено
//  ^ variable.parameter.bsl
) Экспорт
// <- punctuation.bracket.end.bsl
// ^ storage.modifier.bsl
КонецПроцедуры
// <- storage.type.bsl

&НаСервере
// <- storage.modifier.directive.bsl
// ^ storage.modifier.directive.bsl
&НаКлиентеНаСервереБезКонтекста
// <- storage.modifier.directive.bsl
// ^ storage.modifier.directive.bsl
&НаЧемУгодно(ДажеСПараметром = "Да", СПараметромБезЗначения, "Значение без параметра")
// <- storage.type.annotation.bsl
// ^ storage.type.annotation.bsl
//          ^ punctuation.bracket.begin.bsl
//           ^^^ variable.annotation.bsl
//                           ^ keyword.operator.assignment.bsl
//                             ^^^^ string.quoted.double.bsl
//                                 ^ keyword.operator.bsl
//                                   ^^^ variable.annotation.bsl
//                                                         ^ keyword.operator.bsl
//                                                           ^^^^ string.quoted.double.bsl
&НаЧемУгодно(ДажеДважды = Истина)
// <- storage.type.annotation.bsl
// ^ storage.type.annotation.bsl
//          ^ punctuation.bracket.begin.bsl
//           ^^^ variable.annotation.bsl
//                      ^ keyword.operator.assignment.bsl
//                        ^ constant.language.bsl
Процедура ТестДолжен_ПроверитьПолучениеАннотацийМетода() Экспорт

КонецПроцедуры
