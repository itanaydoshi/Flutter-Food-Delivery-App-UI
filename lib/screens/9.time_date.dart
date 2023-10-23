import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/custom_appbar.dart';
import 'package:table_calendar/table_calendar.dart';

class TimeAndDate extends StatefulWidget {
  const TimeAndDate({Key? key}) : super(key: key);

  @override
  _TimeAndDateState createState() => _TimeAndDateState();
}

class _TimeAndDateState extends State<TimeAndDate> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      today = selectedDay;
    });
  }

  Widget _buildElevatedButton(
    String text,
    Function() onPressed,
    Color buttonColor,
    Color textColor,
  ) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16, color: textColor),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 244, 246, 1),
      appBar:
          const CustomAppBar(title: 'Time and Date', icon: Icons.arrow_back),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Choose Date',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TableCalendar(
                  rowHeight: 40,
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  focusedDay: today,
                  firstDay: DateTime.utc(2010, 10, 21),
                  lastDay: DateTime.utc(2030, 3, 14),
                  onDaySelected: _onDaySelected,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Choose Time',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Special Italian Breakfast',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            _buildElevatedButton(
              'Confirm',
              () {},
              const Color.fromARGB(255, 255, 102, 0),
              Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
