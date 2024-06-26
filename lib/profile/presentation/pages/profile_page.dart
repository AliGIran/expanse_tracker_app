import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedBottomItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.deepPurple,
              radius: 45,
              child: CircleAvatar(
                radius: 43,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
            ),
            const Gap(10),
            const Expanded(
              child: Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                // Handle edit profile
              },
            ),
          ],
        ),
        // leading: Expanded(child: const CircleAvatar()),
        // title: ListTile(
        //     leading: const CircleAvatar(),
        //     title: Column(children: [
        //       Text("Username",style: Theme.of(context).textTheme.bodySmall,),
        //       Text("Ali Gorji",style: Theme.of(context).textTheme.titleLarge,)
        //     ],)
        // ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: <ListTile>[
            ListTile(
              leading: IconButton.filledTonal(
                icon: const Icon(Icons.account_balance_wallet),
                color: Colors.deepPurple,
                onPressed: () {},
              ),
              title: const Text("Account"),
            ),
            ListTile(
              leading: IconButton.filledTonal(
                color: Colors.deepPurple,
                onPressed: () {},
                icon: const Icon(Icons.settings),
              ),
              title: const Text("Setting"),
            ),
            ListTile(
              leading: IconButton.filledTonal(
                color: Colors.deepPurple,
                onPressed: () {},
                icon: const Icon(Icons.upload),
              ),
              title: const Text("Export Data"),
            ),
            ListTile(
              leading: IconButton.filledTonal(
                style: ButtonStyle(
                    iconColor: WidgetStateProperty.all<Color>(Colors.red),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.red[100]!)

                    // MaterialStateProperty.all(Colors.red)

                    ),
                // splashColor: Colors.redAccent,
                icon: const Icon(Icons.logout),
                // color: Colors.red,
                onPressed: () {},
              ),
              title: const Text("Logout"),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepPurple,
        currentIndex: _selectedBottomItem,
        onTap: (value) {
          setState(() {
            _selectedBottomItem = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.man), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Budget"),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet), label: "Transaction"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
