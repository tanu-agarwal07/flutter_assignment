import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/settings/pages/settings.dart';

import '../main.dart';
import 'dashboard/pages/dashboard.dart';
import 'feedback/pages/feedback.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'DASHBOARD'),
            Tab(text: 'FEEDBACK'),
            Tab(text: 'SETTINGS'),
          ],
          indicatorColor: Colors.redAccent,
          indicatorSize: TabBarIndicatorSize.label,
          padding: EdgeInsets.zero,
          tabAlignment: TabAlignment.center,
          unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 20),
          labelStyle: TextStyle(color: Colors.redAccent, fontSize: 20),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          DashboardScreen(),
          FeedbackScreen(),
          SettingsScreen(),
        ],
      ),
    );
  }
}