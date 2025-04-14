import 'package:demo_app/common/assetspath.dart';
import 'package:demo_app/common/barchat.dart';
import 'package:demo_app/common/drawer.dart';
import 'package:demo_app/common/globlesize_name.dart';
import 'package:demo_app/common/golblecolor.dart';
import 'package:demo_app/common/spacerwidget.dart';
import 'package:demo_app/dashboardview.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: Dashboardview()),
    Center(child: ProgramPieChart()),
    Center(child: Text("Users")),
    Center(child: Text("Requests")),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // ✅ This connects the key
         endDrawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: AppColors.whiteBackground,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssestPath.profile),
        ),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset(AssestPath.serach)),
          SpacerWidget.size8w,
          IconButton(
              onPressed: () {}, icon: Image.asset(AssestPath.notification)),
          SpacerWidget.size8w,
          IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              icon: Image.asset(AssestPath.menuBar)),
          SpacerWidget.size8w,
        ],
      ),
  
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.whiteBackground,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.searchIcon.withOpacity(0.8),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: Fontname.Nunito,
          fontSize: CommonFont.mediumfontsize,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontFamily: Fontname.Nunito,
          fontSize: CommonFont.mediumfontsize,
        ),
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: 'Programs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.request_page),
            label: 'Requests',
          ),
        ],
      ),
    );
  }
}
