import 'package:demo_app/common/assetspath.dart';
import 'package:demo_app/common/globlesize_name.dart';
import 'package:demo_app/common/golblecolor.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // "Admin" text at the top
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Admin',
                style: TextStyle(
                    color: AppColors.myBlue,
                    fontFamily: Fontname.Nunito,
                    fontWeight: FontWeight.bold,
                    fontSize: CommonFont.largefontsize),
              ),
            ),
          ),

          // Profile Section
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(AssestPath.profile)),
                SizedBox(height: 10),
                Text(
                  'John Doe',
                  style: TextStyle(
                      fontFamily: Fontname.Nunito,
                      fontWeight: FontWeight.bold,
                      fontSize: CommonFont.largefontsize),
                ),
                Text(
                  'Mentor',
                  style: TextStyle(
                      color: AppColors.grey,
                      fontFamily: Fontname.Nunito,
                      fontWeight: FontWeight.bold,
                      fontSize: CommonFont.mediumfontsize),
                ),
              ],
            ),
          ),

          Divider(),

          // Drawer Items
          Expanded(
            child: ListView(
              children: [
                _buildDrawerItem(Icons.schedule, 'Schedular', () {}),
                _buildDrawerItem(Icons.access_time, 'Timesheet', () {}),
                _buildDrawerItem(Icons.forum, 'Discussions', () {}),
                _buildDrawerItem(Icons.insert_chart_outlined, 'Reports', () {}),
                _buildDrawerItem(Icons.feedback, 'Feedback', () {}),
                _buildDrawerItem(Icons.emoji_events, 'Certificates', () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
        leading: Icon(icon, color: AppColors.myBlue),
        title: Text(
          title,
          style: TextStyle(
              fontFamily: Fontname.Nunito,
              fontWeight: FontWeight.bold,
              fontSize: CommonFont.mediumfontsize),
        ),
        onTap: onTap);
  }
}
