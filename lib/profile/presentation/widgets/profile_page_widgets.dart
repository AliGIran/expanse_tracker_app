import 'package:flutter/material.dart';

import '../../../core/data/page_routes.dart';

class ProfilePageAvatar extends StatelessWidget {
  const ProfilePageAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.deepPurple,
      radius: 45,
      child: CircleAvatar(
        radius: 42,
        backgroundImage: AssetImage("assets/images/avatar.jpg"),
      ),
    );
  }
}

///using user name as title of profile page
class ProfilePageTitle extends StatelessWidget {
  const ProfilePageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Text(
        'John Doe',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ProfilePageEditIconButton extends StatelessWidget {
  const ProfilePageEditIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () {
        // Handle edit profile
      },
    );
  }
}

//todo: the account app route is empty

//account button
ListTile profilePageAccountListTile() {
  return ListTile(
    leading: IconButton.filledTonal(
      icon: const Icon(Icons.account_balance_wallet),
      color: Colors.deepPurple,
      onPressed: () {},
    ),
    title: const Text("Account"),
  );
}

//setting button
ListTile profilePageSettingListTile(BuildContext context) {
  return ListTile(
    onTap: () => Navigator.pushNamed(context, settingHomePage),
    leading: IconButton.filledTonal(
      color: Colors.deepPurple,
      onPressed: () {
        Navigator.pushNamed(context, settingHomePage);
      },
      icon: const Icon(Icons.settings),
    ),
    title: const Text("Setting"),
  );
}

//export button
ListTile profilePageExportDataListTile(BuildContext context) {
  return ListTile(
    leading: IconButton.filledTonal(
      color: Colors.deepPurple,
      onPressed: () {
        Navigator.pushNamed(context, exportDataHomePage);
      },
      icon: const Icon(Icons.upload),
    ),
    title: const Text("Export Data"),
    onTap: () => Navigator.pushNamed(context, exportDataHomePage),
  );
}

//logout button
ListTile profilePageLogoutListTile(BuildContext context) {
  return ListTile(
    onTap: () => showModalSheet(context),
    leading: IconButton.filledTonal(
      style: ButtonStyle(
          iconColor: WidgetStateProperty.all<Color>(Colors.red),
          backgroundColor: WidgetStateProperty.all<Color>(Colors.red[100]!)

          // MaterialStateProperty.all(Colors.red)

          ),
      // splashColor: Colors.redAccent,
      icon: const Icon(Icons.logout),
      // color: Colors.red,
      onPressed: () {},
    ),
    title: const Text("Logout"),
  );
}

showModalSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    showDragHandle: true,
    context: context,
    builder: (context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Logout?",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Text(
                "Are you sure do you wanna logout?",
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  logOutNoButton(context),
                  logOutYesButton(),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

Widget logOutNoButton(BuildContext context) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(left: 8, right: 16),
      child: FilledButton.tonal(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("No")),
    ),
  );
}

//todo: define logout confirm
Widget logOutYesButton() {
  return Expanded(
      child: Container(
    margin: const EdgeInsets.only(left: 16, right: 8),
    child: FilledButton(onPressed: () {}, child: const Text("Yes")),
  ));
}

class ProfilePageAddNewUserFAB extends StatelessWidget {
  const ProfilePageAddNewUserFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
