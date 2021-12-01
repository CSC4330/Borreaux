import 'package:borreauxapp/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateRangePickerWidget extends StatefulWidget {
  @override
  _DateRangePickerWidgetState createState() => _DateRangePickerWidgetState();
}

class _DateRangePickerWidgetState extends State<DateRangePickerWidget> {
  DateTimeRange dateRange;

  String getDateRange() {
    if (dateRange == null) {
      return 'Choose rental period...';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange.start) +
          " - " +
          DateFormat('MM/dd/yyyy').format(dateRange.end);
    }
  }

  @override
  Widget build(BuildContext context) => HeaderWidget(
        title: '',
        child: Row(
          children: [
            Expanded(
              child: ButtonWidget(
                text: getDateRange(),
                onClicked: () => pickDateRange(context),
              ),
            ),
          ],
        ),
      );

  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(Duration(hours: 24 * 3)),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
      initialDateRange: dateRange ?? initialDateRange,
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }
}
