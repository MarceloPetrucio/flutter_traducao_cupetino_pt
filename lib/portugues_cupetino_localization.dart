import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class PortuguesCupertinoLocalizations implements CupertinoLocalizations {
  final materialDelegate = GlobalMaterialLocalizations.delegate;
  final widgetsDelegate = GlobalWidgetsLocalizations.delegate;
  final local = const Locale('pt');

  MaterialLocalizations ml;

  Future init() async {
    ml = await materialDelegate.load(local);
    print(ml.pasteButtonLabel);
  }

  static const List<String> _shortWeekdays = <String>[
    'Seg',
    'Ter',
    'Qua',
    'Qui',
    'Sex',
    'Sab',
    'Dom',
  ];

  static const List<String> _shortMonths = <String>[
    'Jan',
    'Fev',
    'Mar',
    'Abr',
    'Mai',
    'Jun',
    'Jul',
    'Ago',
    'Set',
    'Out',
    'Nov',
    'Dez',
  ];

  static const List<String> _months = <String>[
    'Janeiro',
    'Fereveiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro',
  ];

  @override
  String get alertDialogLabel => ml.alertDialogLabel;

  // TODO: implement anteMeridiemAbbreviation
  @override
  String get anteMeridiemAbbreviation => ml.anteMeridiemAbbreviation;

  // TODO: implement copyButtonLabel
  @override
  String get copyButtonLabel => "Copiar";

  // TODO: implement cutButtonLabel
  @override
  String get cutButtonLabel => "Recortar";

  // TODO: implement datePickerDateOrder
  @override
  DatePickerDateOrder get datePickerDateOrder => DatePickerDateOrder.mdy;

  // TODO: implement datePickerDateTimeOrder
  @override
  DatePickerDateTimeOrder get datePickerDateTimeOrder => DatePickerDateTimeOrder.date_time_dayPeriod;

  @override
  String datePickerYear(int yearIndex) => yearIndex.toString();

  @override
  String datePickerMonth(int monthIndex) => _months[monthIndex - 1];

  @override
  String datePickerDayOfMonth(int dayIndex) => dayIndex.toString();

  @override
  String datePickerHour(int hour) => hour.toString();

  @override
  String datePickerMediumDate(DateTime date) {
    return ml.formatMediumDate(date);
  }

  @override
  String datePickerHourSemanticsLabel(int hour) => hour.toString() + " horas";

  @override
  String timerPickerMinuteLabel(int minute) => 'min';

  @override
  String timerPickerSecondLabel(int second) => 'sec';

  @override
  String datePickerMinute(int minute) => minute.toString().padLeft(2, '0');

  @override
  String datePickerMinuteSemanticsLabel(int minute) {
    if (minute == 1)
      return '1 minuto';
    return minute.toString() + ' minutos';
  }

  // TODO: implement pasteButtonLabel
  @override
  String get pasteButtonLabel => "Colar";

  // TODO: implement postMeridiemAbbreviation
  @override
  String get postMeridiemAbbreviation => ml.postMeridiemAbbreviation;

  // TODO: implement selectAllButtonLabel
  @override
  String get selectAllButtonLabel => "Selecionar Tudo";

  @override
  String timerPickerHour(int hour) => hour.toString();

  @override
  String timerPickerMinute(int minute) => minute.toString();

  @override
  String timerPickerSecond(int second) => second.toString();

  @override
  String timerPickerHourLabel(int hour) => hour == 1 ? 'hora' : 'horas';


  static const LocalizationsDelegate<CupertinoLocalizations> delegate = _PortuguesDelegate();

  static Future<CupertinoLocalizations> load(Locale locale) async {
    var localizaltions = PortuguesCupertinoLocalizations();
    await localizaltions.init();
    return SynchronousFuture<CupertinoLocalizations>(localizaltions);
  }
}

class _PortuguesDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  const _PortuguesDelegate();

  @override
  bool isSupported(Locale locale) {
    return locale.languageCode == 'pt';
  }

  @override
  Future<CupertinoLocalizations> load(Locale locale) {
    return PortuguesCupertinoLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<CupertinoLocalizations> old) {
    return false;
  }
}
