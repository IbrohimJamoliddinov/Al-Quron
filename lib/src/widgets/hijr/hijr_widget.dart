library hijri_picker;

import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';

import 'hijr_calendar_widger.dart';

const double _kDayPickerRowHeight = 42.0;
const int _kMaxDayPickerRowCount = 6;
const double _kMaxDayPickerHeight =
    _kDayPickerRowHeight * (_kMaxDayPickerRowCount + 2);
const Duration _kMonthScrollDuration = const Duration(milliseconds: 200);

typedef bool SelectableDayPredicate(HijriCalendar day);

class HijriMonthPicker extends StatefulWidget {
  HijriMonthPicker({
    Key? key,
    required this.selectedDate,
    required this.onChanged,
    required this.firstDate,
    required this.lastDate,
    required this.width,
    this.selectableDayPredicate,
  })  : assert(
            !firstDate.isAfter(lastDate.hYear, lastDate.hMonth, lastDate.hDay)),
        super(key: key);

  final HijriCalendar selectedDate;
  final ValueChanged<HijriCalendar> onChanged;
  final HijriCalendar firstDate;
  final HijriCalendar lastDate;
  final SelectableDayPredicate? selectableDayPredicate;
  final double width;

  @override
  _HijriMonthPickerState createState() => new _HijriMonthPickerState();
}

class _HijriMonthPickerState extends State<HijriMonthPicker> {
  @override
  void initState() {
    super.initState();
    final int monthPage = _monthDelta(widget.firstDate, widget.selectedDate);
    _dayPickerController = new PageController(initialPage: monthPage);
    _handleMonthPageChanged(monthPage);
    _updateCurrentDate();
  }

  @override
  void didUpdateWidget(HijriMonthPicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.selectedDate.isAtSameMomentAs(oldWidget.selectedDate.hYear,
        oldWidget.selectedDate.hMonth, oldWidget.selectedDate.hDay)) {
      final int monthPage = _monthDelta(widget.firstDate, widget.selectedDate);
      _dayPickerController = new PageController(initialPage: monthPage);
      _handleMonthPageChanged(monthPage);
    }
  }

  late MaterialLocalizations localizations;
  late TextDirection textDirection;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    localizations = MaterialLocalizations.of(context);
    textDirection = Directionality.of(context);
  }

  late HijriCalendar _todayDate;
  late HijriCalendar _currentDisplayedMonthDate;
  Timer? _timer;
  PageController? _dayPickerController;

  void _updateCurrentDate() {
    _todayDate = new HijriCalendar.now();
    final HijriCalendar tomorrow = new HijriCalendar()
      ..hYear = _todayDate.hYear
      ..hMonth = _todayDate.hMonth
      ..hDay = _todayDate.hDay + 1;
    Duration timeUntilTomorrow = tomorrow
        .hijriToGregorian(tomorrow.hYear, tomorrow.hMonth, tomorrow.hDay)
        .difference(_todayDate.hijriToGregorian(
            _todayDate.hYear, _todayDate.hMonth, _todayDate.hDay));
    timeUntilTomorrow += const Duration(seconds: 1);
    _timer?.cancel();
    _timer = new Timer(timeUntilTomorrow, () {
      setState(() {
        _updateCurrentDate();
      });
    });
  }

  static int _monthDelta(HijriCalendar startDate, HijriCalendar endDate) {
    return (endDate.hYear - startDate.hYear) * 12 +
        endDate.hMonth -
        startDate.hMonth;
  }

  HijriCalendar _addMonthsToMonthDate(
      HijriCalendar monthDate, int monthsToAdd) {
    var x = new HijriCalendar.addMonth(
        monthDate.hYear + (monthDate.hMonth + monthsToAdd) ~/ 12,
        monthDate.hMonth + monthsToAdd % 12);
    return x;
  }

  Widget _buildItems(BuildContext context, int index) {
    final month = _addMonthsToMonthDate(widget.firstDate, index);
    return new HijriDayPicker(
      key: new ValueKey<HijriCalendar>(month),
      selectedDate: widget.selectedDate,
      currentDate: _todayDate,
      onChanged: widget.onChanged,
      firstDate: widget.firstDate,
      lastDate: widget.lastDate,
      displayedMonth: month,
      selectableDayPredicate: widget.selectableDayPredicate,
    );
  }

  void _handleNextMonth() {
    if (!_isDisplayingLastMonth) {
      SemanticsService.announce(
          (_nextMonthDate.hMonth.toString()), textDirection);
      _dayPickerController?.nextPage(
          duration: _kMonthScrollDuration, curve: Curves.ease);
    }
  }

  void _handlePreviousMonth() {
    if (!_isDisplayingFirstMonth) {
      SemanticsService.announce(
          (_previousMonthDate.hMonth.toString()), textDirection);
      _dayPickerController?.previousPage(
          duration: _kMonthScrollDuration, curve: Curves.ease);
    }
  }

  bool get _isDisplayingFirstMonth {
    return !_currentDisplayedMonthDate.isAfter(
        widget.firstDate.hYear, widget.firstDate.hMonth, widget.firstDate.hDay);
  }

  bool get _isDisplayingLastMonth {
    return !_currentDisplayedMonthDate.isBefore(
        widget.lastDate.hYear, widget.lastDate.hMonth, widget.lastDate.hDay);
  }

  late HijriCalendar _previousMonthDate;
  late HijriCalendar _nextMonthDate;

  void _handleMonthPageChanged(int monthPage) {
    setState(() {
      _previousMonthDate =
          _addMonthsToMonthDate(widget.firstDate, monthPage - 1);
      _currentDisplayedMonthDate =
          _addMonthsToMonthDate(widget.firstDate, monthPage);
      _nextMonthDate = _addMonthsToMonthDate(widget.firstDate, monthPage + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: widget.width,
      height: _kMaxDayPickerHeight,
      child: new Stack(
        children: <Widget>[
          new Semantics(
            sortKey: _MonthPickerSortKey.calendar,
            child: new PageView.builder(
              key: new ValueKey<HijriCalendar>(widget.selectedDate),
              controller: _dayPickerController,
              scrollDirection: Axis.horizontal,
              itemCount: _monthDelta(widget.firstDate, widget.lastDate) + 1,
              itemBuilder: _buildItems,
              onPageChanged: _handleMonthPageChanged,
            ),
          ),
          new PositionedDirectional(
            top: 0.0,
            start: 8.0,
            child: new Semantics(
              sortKey: _MonthPickerSortKey.previousMonth,
              child: new IconButton(
                icon: const Icon(Icons.chevron_left),
                tooltip: _isDisplayingFirstMonth
                    ? null
                    : '${localizations.previousMonthTooltip} ${_previousMonthDate.toString()}',
                onPressed:
                    _isDisplayingFirstMonth ? null : _handlePreviousMonth,
              ),
            ),
          ),
          new PositionedDirectional(
            top: 0.0,
            end: 8.0,
            child: new Semantics(
              sortKey: _MonthPickerSortKey.nextMonth,
              child: new IconButton(
                icon: const Icon(Icons.chevron_right),
                tooltip: _isDisplayingLastMonth
                    ? null
                    : '${localizations.nextMonthTooltip} ${_nextMonthDate.toString()}',
                onPressed: _isDisplayingLastMonth ? null : _handleNextMonth,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _dayPickerController?.dispose();
    super.dispose();
  }
}

class _MonthPickerSortKey extends OrdinalSortKey {
  static const _MonthPickerSortKey previousMonth =
      const _MonthPickerSortKey(1.0);
  static const _MonthPickerSortKey nextMonth = const _MonthPickerSortKey(2.0);
  static const _MonthPickerSortKey calendar = const _MonthPickerSortKey(3.0);

  const _MonthPickerSortKey(double order) : super(order);
}

class _HijriDayPickerGridDelegate extends SliverGridDelegate {
  const _HijriDayPickerGridDelegate();

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    const int columnCount = 7;
    final double tileWidth = constraints.crossAxisExtent / columnCount;
    final double tileHeight = math.min(_kDayPickerRowHeight,
        constraints.viewportMainAxisExtent / (_kMaxDayPickerRowCount + 1));
    return new SliverGridRegularTileLayout(
      crossAxisCount: columnCount,
      mainAxisStride: tileHeight,
      crossAxisStride: tileWidth,
      childMainAxisExtent: tileHeight,
      childCrossAxisExtent: tileWidth,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
    );
  }

  @override
  bool shouldRelayout(_HijriDayPickerGridDelegate oldDelegate) => false;
}

const _HijriDayPickerGridDelegate _kDayPickerGridDelegate =
    const _HijriDayPickerGridDelegate();

class HijriDayPicker extends StatelessWidget {
  HijriDayPicker({
    Key? key,
    required this.selectedDate,
    required this.currentDate,
    required this.onChanged,
    required this.firstDate,
    required this.lastDate,
    this.selectableDayPredicate,
    required this.displayedMonth,
  })  : assert(
            !firstDate.isAfter(lastDate.hYear, lastDate.hMonth, lastDate.hDay)),
        super(key: key);

  final HijriCalendar selectedDate;
  final HijriCalendar currentDate;
  final ValueChanged<HijriCalendar> onChanged;
  final HijriCalendar firstDate;
  final HijriCalendar lastDate;
  final HijriCalendar displayedMonth;
  final SelectableDayPredicate? selectableDayPredicate;

  List<Widget> _getDayHeaders(
      TextStyle? headerStyle, MaterialLocalizations localizations) {
    final List<Widget> result = <Widget>[];
    for (int i = 0; true; i = (i + 1) % 7) {
      final String weekday = localizations.narrowWeekdays[i];
      result.add(new ExcludeSemantics(
        child: new Center(child: new Text(weekday, style: headerStyle)),
      ));
      if (i == (0 - 1) % 7) break;
    }
    return result;
  }

  static int getDaysInMonth(int year, int month) {
    return HijriCalendar().getDaysInMonth(year, month);
  }

  int _computeFirstDayOffset(int year, int month) {
    var convertDate = new HijriCalendar();
    DateTime wkDay = convertDate.hijriToGregorian(year, month, 1);
    final int weekdayFromMonday = wkDay.weekday - 1;
    final int firstDayOfWeekFromSunday = 0;
    final int firstDayOfWeekFromMonday = (firstDayOfWeekFromSunday - 1) % 7;
    return (weekdayFromMonday - firstDayOfWeekFromMonday) % 7;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);

    final int year = displayedMonth.hYear;
    final int month = displayedMonth.hMonth;
    final int daysInMonth = getDaysInMonth(year, month);
    final int firstDayOffset = _computeFirstDayOffset(year, month);
    final List<Widget> labels = <Widget>[];
    labels.addAll(_getDayHeaders(themeData.textTheme.caption, localizations));
    for (int i = 0; true; i += 1) {
      final int day = i - firstDayOffset + 1;
      if (day > daysInMonth) break;
      if (day < 1) {
        labels.add(new Container());
      } else {
        final HijriCalendar dayToBuild = new HijriCalendar()
          ..hYear = year
          ..hMonth = month
          ..hDay = day;
        final bool disabled = dayToBuild.isAfter(
                lastDate.hYear, lastDate.hMonth, lastDate.hDay) ||
            dayToBuild.isBefore(
                firstDate.hYear, firstDate.hMonth, firstDate.hDay) ||
            (selectableDayPredicate != null &&
                !selectableDayPredicate!(dayToBuild));

        BoxDecoration? decoration;
        TextStyle? itemStyle = themeData.textTheme.bodyText2;

        final bool isSelectedDay = selectedDate.hYear == year &&
            selectedDate.hMonth == month &&
            selectedDate.hDay == day;
        if (isSelectedDay) {
          itemStyle = themeData.accentTextTheme.bodyText1;
          decoration = new BoxDecoration(
            color: Color(0xFFABABAB),
            shape: BoxShape.circle,
          );
        } else if (disabled) {
          itemStyle = themeData.textTheme.bodyText2
              ?.copyWith(color: themeData.disabledColor);
        } else if (currentDate.hYear == year &&
            currentDate.hMonth == month &&
            currentDate.hDay == day) {
          itemStyle = themeData.textTheme.bodyText1
              ?.copyWith(color: themeData.accentColor);
        }

        Widget dayWidget = new Container(
          decoration: decoration,
          child: new Center(
            child: new Semantics(
              label:
                  '${localizations.formatDecimal(day)}, ${dayToBuild.toString()}',
              selected: isSelectedDay,
              child: new ExcludeSemantics(
                child: new Text(localizations.formatDecimal(day),
                    style: itemStyle),
              ),
            ),
          ),
        );

        if (!disabled) {
          dayWidget = new GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              onChanged(dayToBuild);
            },
            child: dayWidget,
          );
        }

        labels.add(dayWidget);
      }
    }

    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Column(
        children: <Widget>[
          new Container(
            height: _kDayPickerRowHeight,
            child: new Center(
              child: new ExcludeSemantics(
                child: new Text(
                  "${displayedMonth.toFormat("MMMM")} ${displayedMonth.hYear}",
                  style: themeData.textTheme.subtitle1,
                ),
              ),
            ),
          ),
          new Flexible(
            child: new GridView.custom(
              gridDelegate: _kDayPickerGridDelegate,
              childrenDelegate: new SliverChildListDelegate(labels,
                  addRepaintBoundaries: false),
            ),
          ),
        ],
      ),
    );
  }
}
