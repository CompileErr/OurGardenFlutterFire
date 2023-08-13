import 'package:flutter/material.dart';
import 'package:level1version/MyDetailsScreen.dart';
import 'package:level1version/MyTransactions.dart';
import 'package:level1version/PurchaseScreen.dart';
import 'AddProduct.dart';
import 'settings_screen.dart';
import 'HelpScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  // Declare and initialize the _scaffoldKey inside the Homepage class
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Welcome to OurGarden',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  SizedBox(height: 8),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                    AssetImage('assets/images/ourgarden_logo.png'),
                  ),
                ],
              ),
              decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              leading:const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:const Icon(Icons.home),
              title: const Text('asdf'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
            ),
            ListTile(
              leading:const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpScreen()));
              },
            ),
        ListTile(
        leading:const Icon(Icons.contacts),
            title: const Text('My Details'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyDetailsScreen()));
          },
        ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: const Text('Purchase'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PurchaseScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.list_alt),
              title:const Text('My Transactions'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyTransactionScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_business),
              title: const Text('Add Product'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddProduct()));
              },
            ),

          ],
        ),
      ),
      // Use the _scaffoldKey in the scaffold widget
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('OurGarden'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Use the _scaffoldKey to call the openDrawer() method
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          Text('hello'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
      ),
    );
  }
}

