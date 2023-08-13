import 'package:flutter/material.dart';
import 'package:level1version/MyDetailsScreen.dart';
import 'package:level1version/MyTransactions.dart';
import 'AddProduct.dart';

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
                      style: TextStyle(fontSize: 20, color: Colors.white)),
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
              leading:const Icon(Icons.list),
              title: const Text('Search Products'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:const Icon(Icons.map),
              title: const Text('Whats near me'),
              onTap: () {
                Navigator.pop(context);
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
              leading: const Icon(Icons.money),
              title:const Text('My Transactions'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyTransactionScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.trolley),
              title: const Text('Add new Product (SELLER ONLY)'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddProduct()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.warehouse),
              title: const Text('My Products (SELLER ONLY)'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddProduct()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('set location (SELLER ONLY)'),
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

