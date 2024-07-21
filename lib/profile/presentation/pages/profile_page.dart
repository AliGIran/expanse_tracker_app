import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/presentation/widgets/core_widgets.dart';
import '../widgets/profile_page_widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Row(
          children: [
            ProfilePageAvatar(),
            Gap(10),
            ProfilePageTitle(),
            ProfilePageEditIconButton(),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: <ListTile>[
            profilePageAccountListTile(),
            profilePageSettingListTile(),
            profilePageExportDataListTile(),
            profilePageLogoutListTile(context),
          ],
        ),
      ),
      bottomNavigationBar: const MainBottomNavigationBar(),
      floatingActionButton: const ProfilePageAddNewUserFAB(),
    );
  }
}
