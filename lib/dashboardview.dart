import 'package:demo_app/common/globlesize_name.dart';
import 'package:demo_app/common/golblecolor.dart';
import 'package:demo_app/common/spacerwidget.dart';
import 'package:demo_app/model/plannedprogramsmodel.dart';
import 'package:demo_app/model/topmentors.dart';
import 'package:demo_app/model/topprogrammodel.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Dashboardview extends StatefulWidget {
  const Dashboardview({
    super.key,
  });

  @override
  State<Dashboardview> createState() => _DashboardviewState();
}

List<Program> programList = [
  Program(count: "327", description: "Programs", boxColor: Color(0xFFFFF6D5)),
  Program(count: "120", description: "Mentors", boxColor: Color(0xFFD7FAF4)),
  Program(count: "556", description: "Mentees", boxColor: Color(0xFFE9E6FB)),
];

final List<String> months = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
];

final List<Topprogram> topprogram = [
  Topprogram(
      programName: 'John Doe',
      category: 'Programming',
      createdBy: 'Admin',
      email: 'john@example.com',
      view: 'View'),
  Topprogram(
      programName: 'Jane Smith',
      category: 'Design',
      createdBy: 'Admin',
      email: 'jane@example.com',
      view: 'View'),
  Topprogram(
      programName: 'Sara Lee',
      category: 'Business',
      createdBy: 'Admin',
      email: 'sara@example.com',
      view: 'View'),
];

final List<ToMentor> topmentor = [
  ToMentor(
    mentorName: 'John Doe',
    program: 'Programming',
    email: 'john@example.com',
    rating: 4.5,
    view: 'View',
  ),
  ToMentor(
      mentorName: 'Jane Smith',
      program: 'Design',
      email: 'jane@example.com',
      rating: 3.9,
      view: 'View'),
  ToMentor(
      mentorName: 'Sara Lee',
      program: 'Business',
      rating: 4.9,
      email: 'sara@example.com',
      view: 'View'),
];

final int premiumCount = 40;
final int freeCount = 54;
final int total = premiumCount + freeCount;

final int virtualCount = 36;
final int physicalCount = 50;
final int total2 = virtualCount + physicalCount;

class _DashboardviewState extends State<Dashboardview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(12),
                color: AppColors.whiteBackground,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: GradientBar(
                                  height: 30,
                                  width: 6,
                                  gradient: CustomGradienterror
                                      .fromColor(), // Your custom gradient
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              Text(
                                "Planned Programs",
                                style: TextStyle(
                                    fontFamily: Fontname.Nunito,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonFont.largefontsize),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  AppColors.searchIcon.withOpacity(0.2),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              "View All",
                              style: TextStyle(
                                  color: Colors.black,
                                  //color: AppColors.searchIcon.withOpacity(0.8),
                                  fontFamily: Fontname.Nunito,
                                  fontSize: CommonFont.smallfontsize),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        height: 2,
                      ),
                      const SizedBox(height: 10),

                      ...programList.map((program) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                decoration: BoxDecoration(
                                  color: program.boxColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  program.count,
                                  style: TextStyle(
                                      fontFamily: Fontname.Nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: CommonFont.largefontsize),
                                ),
                              ),
                              SpacerWidget.size16w,
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  program.description,
                                  style: TextStyle(
                                      fontFamily: Fontname.Nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: CommonFont.largefontsize),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
              SpacerWidget.medium,

              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(12),
                color: AppColors.whiteBackground,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title and Dropdown
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: GradientBar(
                                  height: 30,
                                  width: 6,
                                  gradient: CustomGradienterror
                                      .fromColor(), // Your custom gradient
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              Text(
                                "Program Status Metrics",
                                style: TextStyle(
                                    fontFamily: Fontname.Nunito,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonFont.largefontsize),
                              ),
                            ],
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: AppColors.searchIcon.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButton<String>(
                                value: "Month",
                                items: ["Month", "Week", "Year"]
                                    .map((e) => DropdownMenuItem(
                                        value: e, child: Text(e)))
                                    .toList(),
                                onChanged: (value) {},
                                style: TextStyle(
                                  color: AppColors.searchIcon.withOpacity(
                                      0.8), // Text color of the selected item
                                  fontSize:
                                      16, // Font size for the selected item
                                ),
                                dropdownColor: Colors
                                    .white, // Background color of the dropdown menu
                                iconEnabledColor:
                                    Colors.white, // Color of the dropdown icon
                                iconDisabledColor: Colors
                                    .white, // Color when the dropdown is disabled
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.searchIcon.withOpacity(0.8),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Divider(
                        height: 10,
                      ),
                      SizedBox(height: 16),
                      // Horizontal Scrollable Chart
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: 100 * months.length.toDouble(),
                          height: 250,
                          child: BarChart(
                            BarChartData(
                              alignment: BarChartAlignment.spaceAround,
                              maxY: 60,
                              barTouchData: BarTouchData(enabled: false),
                              titlesData: FlTitlesData(
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 40,
                                  ),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget: (value, _) {
                                      int index = value.toInt();
                                      if (index >= 0 && index < months.length) {
                                        return Text(
                                          months[index],
                                          style: TextStyle(
                                              fontFamily: Fontname.Nunito,
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  CommonFont.smallfontsize),
                                        );
                                      } else {
                                        return Text('');
                                      }
                                    },
                                    interval: 1,
                                    reservedSize: 32,
                                  ),
                                ),
                                topTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false)),
                                rightTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false)),
                              ),
                              gridData: FlGridData(
                                show: true,
                                drawVerticalLine:
                                    true, // Show vertical grid lines
                                drawHorizontalLine:
                                    true, // Show horizontal grid lines
                                horizontalInterval:
                                    10, // Interval between horizontal lines
                                verticalInterval:
                                    1, // Interval between vertical lines
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                    color: Colors.grey
                                        .shade300, // Color for horizontal lines
                                    strokeWidth:
                                        1, // Thickness of horizontal lines
                                    dashArray: [
                                      5,
                                      5
                                    ], // Make dashed lines for horizontal
                                  );
                                },
                                getDrawingVerticalLine: (value) {
                                  return FlLine(
                                    color: Colors.grey
                                        .shade300, // Color for vertical lines
                                    strokeWidth:
                                        1, // Thickness of vertical lines
                                    dashArray: [
                                      5,
                                      5
                                    ], // Make dashed lines for vertical
                                  );
                                },
                              ),
                              borderData: FlBorderData(show: false),
                              barGroups: List.generate(
                                months.length,
                                (index) => makeGroupData(
                                  index,
                                  40 +
                                      index
                                          .toDouble(), // All programs dummy data
                                  20 +
                                      (index % 5)
                                          .toDouble(), // Active dummy data
                                  10 +
                                      (index % 7)
                                          .toDouble(), // Completed dummy data
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      // Legend
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          legendDot(Colors.blue.shade800, "All programs"),
                          legendDot(Colors.blue.shade400, "Active"),
                          legendDot(Colors.blue.shade200, "Completed"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SpacerWidget.medium,
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(12),
                color: AppColors.whiteBackground,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: GradientBar(
                                  height: 30,
                                  width: 6,
                                  gradient: CustomGradienterror
                                      .fromColor(), // Your custom gradient
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              Text(
                                "Top Program",
                                style: TextStyle(
                                    fontFamily: Fontname.Nunito,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonFont.largefontsize),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  AppColors.searchIcon.withOpacity(0.2),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              "View All",
                              style: TextStyle(
                                  color: Colors.black,
                                  //color: AppColors.searchIcon.withOpacity(0.8),
                                  fontFamily: Fontname.Nunito,
                                  fontSize: CommonFont.smallfontsize),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        height: 2,
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Material(
                          elevation: 2,
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.whiteBackground,
                          child: DataTable(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            columnSpacing: 20, // Adjust spacing between columns
                            dataRowHeight: 48, // Set row height
                            headingRowHeight: 56, // Set header row height
                            headingRowColor:
                                WidgetStateProperty.resolveWith<Color>(
                              (Set<WidgetState> states) {
                                return AppColors.searchIcon.withOpacity(
                                    0.1); // Your desired header background color
                              },
                            ),
                            columns: [
                              DataColumn(
                                  label: Text(
                                'program Name',
                                style: TextStyle(
                                    fontFamily: Fontname.Nunito,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonFont.mediumfontsize),
                              )),
                              DataColumn(
                                  label: Text(
                                'Category',
                                style: TextStyle(
                                    fontFamily: Fontname.Nunito,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonFont.mediumfontsize),
                              )),
                              DataColumn(
                                  label: Text(
                                'CreatedBy',
                                style: TextStyle(
                                    fontFamily: Fontname.Nunito,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonFont.mediumfontsize),
                              )),
                              DataColumn(
                                  label: Text(
                                'Email',
                                style: TextStyle(
                                    fontFamily: Fontname.Nunito,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonFont.mediumfontsize),
                              )),
                              DataColumn(
                                  label: Text(
                                'View',
                                style: TextStyle(
                                    fontFamily: Fontname.Nunito,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonFont.mediumfontsize),
                              )),
                            ],
                            rows: topprogram.map((mentor) {
                              return DataRow(cells: [
                                DataCell(Text(mentor.programName,
                                    style: TextStyle(
                                        fontFamily: Fontname.Nunito,
                                        fontSize: CommonFont.smallfontsize))),
                                DataCell(Text(mentor.category,
                                    style: TextStyle(
                                        fontFamily: Fontname.Nunito,
                                        fontSize: CommonFont.smallfontsize))),
                                DataCell(Text(mentor.createdBy,
                                    style: TextStyle(
                                        fontFamily: Fontname.Nunito,
                                        fontSize: CommonFont.smallfontsize))),
                                DataCell(Text(mentor.email)),
                                // Show an eye icon in the View column
                                DataCell(Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.blue,
                                )),
                              ]);
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SpacerWidget.medium,
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(12),
                color: AppColors.whiteBackground,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: GradientBar(
                                  height: 30,
                                  width: 6,
                                  gradient: CustomGradienterror
                                      .fromColor(), // Your custom gradient
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              Text(
                                "Top Mentor",
                                style: TextStyle(
                                    fontFamily: Fontname.Nunito,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonFont.largefontsize),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  AppColors.searchIcon.withOpacity(0.2),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              "View All",
                              style: TextStyle(
                                  color: Colors.black,
                                  //color: AppColors.searchIcon.withOpacity(0.8),
                                  fontFamily: Fontname.Nunito,
                                  fontSize: CommonFont.smallfontsize),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        height: 2,
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          columnSpacing: 20, // Adjust spacing between columns
                          dataRowHeight: 48, // Set row height
                          headingRowHeight: 56, // Set header row height
                          headingRowColor:
                              WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              return AppColors.searchIcon.withOpacity(
                                  0.1); // Your desired header background color
                            },
                          ),
                          columns: [
                            DataColumn(
                                label: Text(
                              'Mentor Name',
                              style: TextStyle(
                                  fontFamily: Fontname.Nunito,
                                  fontWeight: FontWeight.bold,
                                  fontSize: CommonFont.mediumfontsize),
                            )),
                            DataColumn(
                                label: Text(
                              'program',
                              style: TextStyle(
                                  fontFamily: Fontname.Nunito,
                                  fontWeight: FontWeight.bold,
                                  fontSize: CommonFont.mediumfontsize),
                            )),
                            DataColumn(
                                label: Text(
                              'Email',
                              style: TextStyle(
                                  fontFamily: Fontname.Nunito,
                                  fontWeight: FontWeight.bold,
                                  fontSize: CommonFont.mediumfontsize),
                            )),
                            DataColumn(
                                label: Text(
                              'Rating',
                              style: TextStyle(
                                  fontFamily: Fontname.Nunito,
                                  fontWeight: FontWeight.bold,
                                  fontSize: CommonFont.mediumfontsize),
                            )),
                            DataColumn(
                                label: Text(
                              'View',
                              style: TextStyle(
                                  fontFamily: Fontname.Nunito,
                                  fontWeight: FontWeight.bold,
                                  fontSize: CommonFont.mediumfontsize),
                            )),
                          ],
                          rows: topmentor.map((mentor) {
                            return DataRow(cells: [
                              DataCell(Text(mentor.mentorName,
                                  style: TextStyle(
                                      fontFamily: Fontname.Nunito,
                                      fontSize: CommonFont.smallfontsize))),
                              DataCell(Text(mentor.program,
                                  style: TextStyle(
                                      fontFamily: Fontname.Nunito,
                                      fontSize: CommonFont.smallfontsize))),

                              DataCell(Text(mentor.email)),
                              // Show an eye icon in the View column
                              // DataCell(
                              //   RatingBarIndicator(
                              //     rating: mentor.rating, // double like 3.3
                              //     itemBuilder: (context, index) => Icon(
                              //       Icons.star,
                              //       color: Colors.amber,
                              //     ),
                              //     itemCount: 3,
                              //     itemSize: 20.0,
                              //     direction: Axis.horizontal,
                              //   ),
                              // ),
                              DataCell(Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColors.yello,
                                  ),
                                  Text(mentor.rating.toString()),
                                ],
                              )),
                              DataCell(Icon(
                                Icons.remove_red_eye,
                                color: Colors.blue,
                              )),
                            ]);
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SpacerWidget.medium,
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(12),
                color: AppColors.whiteBackground,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: GradientBar(
                                  height: 30,
                                  width: 6,
                                  gradient: CustomGradienterror
                                      .fromColor(), // Your custom gradient
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              Text(
                                "Program Type  Mentrics",
                                style: TextStyle(
                                    fontFamily: Fontname.Nunito,
                                    fontWeight: FontWeight.bold,
                                    fontSize: CommonFont.largefontsize),
                              ),
                            ],
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: AppColors.searchIcon.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButton<String>(
                                value: "Month",
                                items: ["Month", "Week", "Year"]
                                    .map((e) => DropdownMenuItem(
                                        value: e, child: Text(e)))
                                    .toList(),
                                onChanged: (value) {},
                                style: TextStyle(
                                  color: AppColors.searchIcon.withOpacity(
                                      0.8), // Text color of the selected item
                                  fontSize:
                                      16, // Font size for the selected item
                                ),
                                dropdownColor: Colors
                                    .white, // Background color of the dropdown menu
                                iconEnabledColor:
                                    Colors.white, // Color of the dropdown icon
                                iconDisabledColor: Colors
                                    .white, // Color when the dropdown is disabled
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.searchIcon.withOpacity(0.8),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        height: 2,
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 300,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            PieChart(
                              PieChartData(
                                centerSpaceRadius: 100,
                                sectionsSpace: 0,
                                sections: [
                                  PieChartSectionData(
                                    value: freeCount.toDouble(),
                                    color: AppColors.myBlue, // blue
                                    radius: 30,
                                    showTitle: false,
                                  ),
                                  PieChartSectionData(
                                    value: premiumCount.toDouble(),
                                    color: AppColors.yello, // yellow
                                    radius: 30,
                                    showTitle: false,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Total Programs',
                                  style: TextStyle(
                                      fontFamily: Fontname.Nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: CommonFont.mediumfontsize),
                                ),
                                Text(
                                  '$total',
                                  style: TextStyle(
                                      color: AppColors.myblack,
                                      fontFamily: Fontname.Nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: CommonFont.largefontsize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          legendDonet(AppColors.yello, 'Premium', premiumCount),
                          SizedBox(width: 20),
                          legendDonet(AppColors.myBlue, 'Free', freeCount),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SpacerWidget.medium,
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(12),
                color: AppColors.whiteBackground,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: GradientBar(
                                        height: 30,
                                        width: 6,
                                        gradient: CustomGradienterror
                                            .fromColor(), // Your custom gradient
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    Text(
                                      "Program Model Meterics",
                                      style: TextStyle(
                                          fontFamily: Fontname.Nunito,
                                          fontWeight: FontWeight.bold,
                                          fontSize: CommonFont.largefontsize),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: AppColors.searchIcon.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButton<String>(
                                value: "Month",
                                items: ["Month", "Week", "Year"]
                                    .map((e) => DropdownMenuItem(
                                        value: e, child: Text(e)))
                                    .toList(),
                                onChanged: (value) {},
                                style: TextStyle(
                                  color: AppColors.searchIcon.withOpacity(
                                      0.8), // Text color of the selected item
                                  fontSize:
                                      16, // Font size for the selected item
                                ),
                                dropdownColor: Colors
                                    .white, // Background color of the dropdown menu
                                iconEnabledColor:
                                    Colors.white, // Color of the dropdown icon
                                iconDisabledColor: Colors
                                    .white, // Color when the dropdown is disabled
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.searchIcon.withOpacity(0.8),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        height: 2,
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 300,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            PieChart(
                              PieChartData(
                                centerSpaceRadius: 100,
                                sectionsSpace: 0,
                                sections: [
                                  PieChartSectionData(
                                    value: virtualCount.toDouble(),
                                    color: AppColors.searchIcon
                                        .withOpacity(0.2), // blue
                                    radius: 30,
                                    showTitle: false,
                                  ),
                                  PieChartSectionData(
                                    value: physicalCount.toDouble(),
                                    color: AppColors.myBlue, // yellow
                                    radius: 30,
                                    showTitle: false,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Total Programs',
                                  style: TextStyle(
                                      fontFamily: Fontname.Nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: CommonFont.mediumfontsize),
                                ),
                                Text(
                                  '$total2',
                                  style: TextStyle(
                                      color: AppColors.myblack,
                                      fontFamily: Fontname.Nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: CommonFont.largefontsize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          legendDonet(
                              AppColors.myBlue, 'Virtual', virtualCount),
                          SizedBox(width: 20),
                          legendDonet(AppColors.searchIcon.withOpacity(0.2),
                              'Physical', physicalCount),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget legendDot(Color color, String label) {
    return Row(
      children: [
        CircleAvatar(radius: 5, backgroundColor: color),
        SizedBox(width: 16),
        Text(
          label,
          style: TextStyle(
              fontFamily: Fontname.Nunito,
              fontWeight: FontWeight.bold,
              fontSize: CommonFont.smallfontsize),
        ),
      ],
    );
  }

  Widget legendDonet(Color color, String label, int value) {
    return Row(
      children: [
        CircleAvatar(radius: 8, backgroundColor: color),
        SizedBox(width: 16),
        Text(
          label,
          style: TextStyle(
              fontFamily: Fontname.Nunito,
              fontWeight: FontWeight.bold,
              fontSize: CommonFont.mediumfontsize),
        ),
        SizedBox(width: 16),
        Text(
          value.toString(),
          style: TextStyle(
              fontFamily: Fontname.Nunito,
              fontWeight: FontWeight.bold,
              fontSize: CommonFont.largefontsize),
        ),
      ],
    );
  }

  BarChartGroupData makeGroupData(
      int x, double all, double active, double completed) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(toY: all, width: 16, color: Colors.blue.shade800),
        BarChartRodData(toY: active, width: 16, color: Colors.blue.shade400),
        BarChartRodData(toY: completed, width: 16, color: Colors.blue.shade200),
      ],
      barsSpace: 5,
    );
  }
}
