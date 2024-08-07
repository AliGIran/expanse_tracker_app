import 'package:expense_tracker_app/core/data/page_routes.dart';
import 'package:expense_tracker_app/profile/presentation/pages/profile_page.dart';
import 'package:expense_tracker_app/setting/presentation/pages/setting_currency_page.dart';
import 'package:expense_tracker_app/setting/presentation/pages/setting_home_page.dart';
import 'package:expense_tracker_app/setting/presentation/pages/setting_language_page.dart';
import 'package:expense_tracker_app/setting/presentation/pages/setting_notification_page.dart';
import 'package:expense_tracker_app/setting/presentation/pages/setting_security_page.dart';
import 'package:expense_tracker_app/setting/presentation/pages/setting_theme_page.dart';
import 'package:flutter/material.dart';

import 'expense/presentation/pages/new_expense_page.dart';
import 'export_data/presentation/pages/export_completed_page.dart';
import 'export_data/presentation/pages/export_data_home_page.dart';
import 'home/presentation/pages/main_home_page.dart';
import 'income/presentation/pages/new_income_page.dart';
import 'login/presentation/pages/login_email_sent_page.dart';
import 'login/presentation/pages/login_forgot_password_page.dart';
import 'login/presentation/pages/login_home_page.dart';
import 'login/presentation/pages/login_login_page.dart';
import 'login/presentation/pages/login_reset_password_page.dart';
import 'login/presentation/pages/login_sign_up_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      initialRoute: "/",
      routes: {
        //todo:must add list of pages
        mainHomePage: (context) => const MainHomePage(),
        profilePage: (context) => const ProfilePage(),
        newExpensePage: (context) => NewExpensePage(),
        exportDataHomePage: (context) => const ExportDataHomePage(),
        exportCompletedPage: (context) => const ExportCompletedPage(),
        newIncomePage: (context) => NewIncomePage(),
        loginEmailSentPage: (context) => const LoginEmailSentPage(),
        loginForgotPasswordPage: (context) => LoginForgotPasswordPage(),
        loginHomePage: (context) => const LoginHomePage(),
        loginLoginPage: (context) => const LoginLoginPage(),
        loginResetPasswordPage: (context) => const LoginResetPasswordPage(),
        loginSignUpPage: (context) => const LoginSignUpPage(),
        settingCurrencyPage: (context) => const SettingCurrencyPage(),
        settingHomePage: (context) => const SettingHomePage(),
        settingLanguagePage: (context) => const SettingLanguagePage(),
        settingNotificationPage: (context) => const SettingNotificationPage(),
        settingSecurityPage: (context) => const SettingSecurityPage(),
        settingThemePage: (context) => const SettingThemePage(),
      },
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainHomePage();
  }
}

// final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         useMaterial3: true,
//         colorSchemeSeed: Colors.blue,
//       ),
//       scaffoldMessengerKey: scaffoldKey,
//       home: const FirstPage(),
//     );
//   }
// }
//
// class CounterWidget extends StatelessWidget {
//   final _counter = ValueNotifier(0);
//
//   CounterWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           const Text(
//             'You have pushed the button this many times:',
//           ),
//           ValueListenableBuilder(
//             valueListenable: _counter,
//             builder: (context, counter, _) {
//               return Text(
//                 '$counter',
//                 style: Theme.of(context).textTheme.displayMedium,
//               );
//             },
//           ),
//           ElevatedButton.icon(
//             icon: const Icon(Icons.add,),
//             label: const Text('add'),
//             onPressed: () => _counter.value++,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class FirstPage extends StatefulWidget {
//   const FirstPage({Key? key}) : super(key: key);
//
//   @override
//   State<FirstPage> createState() => _FirstPageState();
// }
//
// class _FirstPageState extends State<FirstPage> {
//   final _key = GlobalKey<ExpandableFabState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CounterWidget(),
//       floatingActionButtonLocation: ExpandableFab.location,
//       floatingActionButton: ExpandableFab(
//         key: _key,
//         duration: const Duration(milliseconds: 100),
//         // distance: 200.0,
//         // type: ExpandableFabType.up,
//         // pos: ExpandableFabPos.left,
//         // childrenOffset: const Offset(0, 20),
//         // fanAngle: 40,
//         // openButtonBuilder: RotateFloatingActionButtonBuilder(
//         //   child: const Icon(Icons.abc),
//         //   fabSize: ExpandableFabSize.large,
//         //   foregroundColor: Colors.amber,
//         //   backgroundColor: Colors.green,
//         //   shape: const CircleBorder(),
//         //   angle: 3.14 * 2,
//         // ),
//         // closeButtonBuilder: FloatingActionButtonBuilder(
//         //   size: 56,
//         //   builder: (BuildContext context, void Function()? onPressed,
//         //       Animation<double> progress) {
//         //     return IconButton(
//         //       onPressed: onPressed,
//         //       icon: const Icon(
//         //         Icons.check_circle_outline,
//         //         size: 40,
//         //       ),
//         //     );
//         //   },
//         // ),
//         overlayStyle: ExpandableFabOverlayStyle(
//           // color: Colors.black.withOpacity(0.5),
//           blur: 5,
//         ),
//         onOpen: () {
//           debugPrint('onOpen');
//         },
//         afterOpen: () {
//           debugPrint('afterOpen');
//         },
//         onClose: () {
//           debugPrint('onClose');
//         },
//         afterClose: () {
//           debugPrint('afterClose');
//         },
//         children: [
//           FloatingActionButton.small(
//             // shape: const CircleBorder(),
//             heroTag: null,
//             child: const Icon(Icons.edit),
//             onPressed: () {
//               const SnackBar snackBar = SnackBar(
//                 content: Text("SnackBar"),
//               );
//               scaffoldKey.currentState?.showSnackBar(snackBar);
//             },
//           ),
//           FloatingActionButton.small(
//             // shape: const CircleBorder(),
//             heroTag: null,
//             child: const Icon(Icons.search),
//             onPressed: () {
//               Navigator.of(context).push(
//                   MaterialPageRoute(builder: ((context) => const NextPage())));
//             },
//           ),
//           FloatingActionButton.small(
//             // shape: const CircleBorder(),
//             heroTag: null,
//             child: const Icon(Icons.share),
//             onPressed: () {
//               final state = _key.currentState;
//               if (state != null) {
//                 debugPrint('isOpen:${state.isOpen}');
//                 state.toggle();
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class NextPage extends StatelessWidget {
//   const NextPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('next'),
//       ),
//       body: const Center(
//         child: Text('next'),
//       ),
//     );
//   }
// }
