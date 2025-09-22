import 'package:flutter/material.dart';
import 'package:islami/screens/ahdes.dart';
import 'package:islami/screens/quran.dart';
import 'package:islami/screens/radio.dart';
import 'package:islami/screens/sabhaa.dart';
import 'package:islami/screens/setting.dart';
import 'package:islami/them_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('اسلامي', style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;

              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
                label: 'الراديوا',
                backgroundColor: AppTheme.primary,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                label: 'السبحه',
                backgroundColor: AppTheme.primary,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ahadeth_icon.png')),
                label: 'الاحاديث',
                backgroundColor: AppTheme.primary,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
                label: 'قراءن',
                backgroundColor: AppTheme.primary,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'الاعدادات',
                backgroundColor: AppTheme.primary,
              ),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    RadioTap(),
    SabhaaTap(),
    AhdesTap(),
    QuranTap(),
    SettingSTap(),
  ];
}
