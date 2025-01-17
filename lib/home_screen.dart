import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DOKER - Dompet Kering',
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: Colors.blue,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Open the drawer
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/wallet_icon.png'), // Replace with your asset
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Fast Budget',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            _buildMenuItem(Icons.grid_view, 'Overview', context),
            _buildMenuItem(Icons.list, 'Transactions', context),
            _buildMenuItem(Icons.schedule, 'Scheduled transactions', context),
            _buildMenuItem(Icons.account_balance, 'Accounts', context),
            _buildMenuItem(Icons.credit_card, 'Credit cards', context),
            _buildMenuItem(Icons.pie_chart_outline, 'Budgets', context),
            _buildMenuItem(Icons.access_time, 'Debts', context),
            _buildMenuItem(Icons.bar_chart, 'Charts', context),
            _buildMenuItem(Icons.category, 'Categories', context),
            _buildMenuItem(Icons.timeline, 'Time', context),
            _buildMenuItem(Icons.calendar_today, 'Calendar', context),
            const Divider(),
            _buildMenuItem(Icons.download, 'Import/Export', context),
          ],
        ),
      ),
      body: const Center(
        child: Text('Content goes here'),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        // Handle menu item tap
        Navigator.pop(context); // Close the drawer after selection
      },
    );
  }
}
