import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_core/localizations.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<ChartData> chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    chartData = <ChartData>[
      ChartData(1, 23),
      ChartData(2, 24),
      ChartData(3, 32),
      ChartData(4, 36),
      ChartData(5, 27)
    ];
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        SfLocalizationEsDelegate(),
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
      ],
      locale: const Locale('es'),
      home: Scaffold(
        appBar: AppBar(),
        body: SfCartesianChart(
            legend: Legend(isVisible: true),
            tooltipBehavior: _tooltipBehavior,
            series: <ChartSeries<ChartData, double>>[
              ColumnSeries<ChartData, double>(
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y),
            ]),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final double x;
  final double y;
}

/// The translations for French (`fr`).
class SfLocalizationEs extends SfLocalizations {
  SfLocalizationEs();

  @override
  String get noSelectedDateCalendarLabel => 'No selected date';

  @override
  String get noEventsCalendarLabel => 'No events';

  @override
  String get daySpanCountLabel => 'Day';

  @override
  String get allowedViewDayLabel => 'Day';

  @override
  String get allowedViewWeekLabel => 'Week';

  @override
  String get allowedViewWorkWeekLabel => 'Work Week';

  @override
  String get allowedViewMonthLabel => 'Month';

  @override
  String get allowedViewScheduleLabel => 'Schedule';

  @override
  String get allowedViewTimelineDayLabel => 'Timeline Day';

  @override
  String get allowedViewTimelineWeekLabel => 'Timeline Week';

  @override
  String get allowedViewTimelineWorkWeekLabel => 'Timeline Work Week';

  @override
  String get allowedViewTimelineMonthLabel => 'Timeline Month';

  @override
  String get todayLabel => 'Today';

  @override
  String get weeknumberLabel => 'Week';

  @override
  String get allDayLabel => 'All Day';

  @override
  String get muharramLabel => 'Muharram';

  @override
  String get safarLabel => 'Safar';

  @override
  String get rabi1Label => "Rabi' al-awwal";

  @override
  String get rabi2Label => "Rabi' al-thani";

  @override
  String get jumada1Label => 'Jumada al-awwal';

  @override
  String get jumada2Label => 'Jumada al-thani';

  @override
  String get rajabLabel => 'Rajab';

  @override
  String get shaabanLabel => "Sha'aban";

  @override
  String get ramadanLabel => 'Ramadan';

  @override
  String get shawwalLabel => 'Shawwal';

  @override
  String get dhualqiLabel => "Dhu al-Qi'dah";

  @override
  String get dhualhiLabel => 'Dhu al-Hijjah';

  @override
  String get shortMuharramLabel => 'Muh.';

  @override
  String get shortSafarLabel => 'Saf.';

  @override
  String get shortRabi1Label => 'Rabi. I';

  @override
  String get shortRabi2Label => 'Rabi. II';

  @override
  String get shortJumada1Label => 'Jum. I';

  @override
  String get shortJumada2Label => 'Jum. II';

  @override
  String get shortRajabLabel => 'Raj.';

  @override
  String get shortShaabanLabel => 'Sha.';

  @override
  String get shortRamadanLabel => 'Ram.';

  @override
  String get shortShawwalLabel => 'Shaw.';

  @override
  String get shortDhualqiLabel => "Dhu'l-Q";

  @override
  String get shortDhualhiLabel => "Dhu'l-H";

  @override
  String get ofDataPagerLabel => 'of';

  @override
  String get pagesDataPagerLabel => 'pages';

  @override
  String get rowsPerPageDataPagerLabel => 'Rows per page';

  @override
  String get pdfBookmarksLabel => 'Bookmarks';

  @override
  String get pdfNoBookmarksLabel => 'No bookmarks found';

  @override
  String get pdfScrollStatusOfLabel => 'of';

  @override
  String get pdfGoToPageLabel => 'Go to page';

  @override
  String get pdfEnterPageNumberLabel => 'Enter page number';

  @override
  String get pdfInvalidPageNumberLabel => 'Please enter a valid number';

  @override
  String get pdfPaginationDialogOkLabel => 'OK';

  @override
  String get pdfPaginationDialogCancelLabel => 'CANCEL';

  @override
  String get passwordDialogHeaderTextLabel => 'Password Protected';

  @override
  String get passwordDialogContentLabel =>
      'Enter the password to open this PDF file';

  @override
  String get passwordDialogHintTextLabel => 'Enter Password';

  @override
  String get passwordDialogInvalidPasswordLabel => 'Invalid Password';

  @override
  String get pdfPasswordDialogOpenLabel => 'OPEN';

  @override
  String get pdfPasswordDialogCancelLabel => 'CANCEL';

  @override
  String get series => 'Customized string';
}

class SfLocalizationEsDelegate extends LocalizationsDelegate<SfLocalizations> {
  const SfLocalizationEsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'es';

  @override
  Future<SfLocalizations> load(Locale locale) {
    return SynchronousFuture<SfLocalizations>(SfLocalizationEs());
  }

  @override
  bool shouldReload(LocalizationsDelegate<SfLocalizations> old) => true;
}
