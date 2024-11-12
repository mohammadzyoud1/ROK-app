import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:rokapp/commander_screen/commanders_screen.dart';
import 'package:rokapp/equipments_screen/equipments_screen.dart';
import 'package:rokapp/healing_screen/HealingScreen.dart';
import 'package:rokapp/RSS_data/RSSScreen.dart';
import 'package:rokapp/trainging_screen/TrainingScreen.dart';
import 'package:rokapp/my_flutter_app_icons.dart';
import 'package:upgrader/upgrader.dart';
import 'package:rokapp/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toggle_switch/toggle_switch.dart';
//import 'local_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale loc = Locale("en");
  // This widget is the root of your application.
  void change(Locale locl) {
    setState(() {
      loc = locl;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final provider = Provider.of<LocaleProvider>(context);
    return MaterialApp(
      locale: loc,
      supportedLocales: L10n.all,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        //GlobalWidgetsLocalizations.delegate,
      ],
      home: UpgradeAlert(
        child: Scaffold(
          //appBar: AppBar(
          //  title: Text('ROK Guide'),
          //),
          backgroundColor: Colors.amber,
          body: main_screen(),
        ),
      ),
    );
  }
}

class main_screen extends StatefulWidget {
  @override
  State<main_screen> createState() => _main_screen();
}

class _main_screen extends State<main_screen> {
  double text_size = 20;
  double border_radius = 25;
  double icon_size = 50;
  double border_width = 10;
  @override
  Widget build(BuildContext context) {
    //final provider = Provider.of<LocaleProvider>(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/main_screen_wallpaper.jpg'),
                  fit: BoxFit.fill)),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              ToggleSwitch(
                minWidth: 80.0,
                cornerRadius: 20.0,
                activeBgColors: [
                  [Colors.green[800]!],
                  [Colors.blue[800]!]
                ],
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                //initialLabelIndex: provider.locale.languageCode == 'ar' ? 0 : 1,
                initialLabelIndex:
                    (context.findAncestorStateOfType<_MyAppState>()?.loc ==
                            Locale("ar"))
                        ? 0
                        : 1,
                totalSwitches: 2,
                labels: ['Ar', 'En'],
                radiusStyle: true,
                onToggle: (index) {
                  setState(() {
                    switch (index) {
                      case 0:
                        //provider.setLocale(Locale('ar'));
                        context
                            .findAncestorStateOfType<_MyAppState>()
                            ?.change(Locale('ar'));
                        break;

                      case 1:
                        //provider.setLocale(Locale('en'));
                        context
                            .findAncestorStateOfType<_MyAppState>()
                            ?.change(Locale('en'));
                        break;
                    }
                  });
                  ;
                },
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.9,
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  //physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: [
                    container_method(
                        border_width,
                        border_radius,
                        icon_size,
                        text_size,
                        AppLocalizations.of(context)!.rss,
                        MyFlutterApp.corn,
                        RSS_screen()),
                    container_method(
                        border_width,
                        border_radius,
                        icon_size,
                        text_size,
                        AppLocalizations.of(context)!.commanders,
                        Icons.person,
                        commander_screen()),
                    container_method(
                        border_width,
                        border_radius,
                        icon_size,
                        text_size,
                        AppLocalizations.of(context)!.healing,
                        Icons.healing,
                        healing_scrren()),
                    container_method(
                        border_width,
                        border_radius,
                        icon_size,
                        text_size,
                        AppLocalizations.of(context)!.training,
                        (MyFlutterApp.horse_variant),
                        Training_screen()),
                    container_method(
                        border_width,
                        border_radius,
                        icon_size,
                        text_size,
                        AppLocalizations.of(context)!.equipments,
                        MyFlutterApp.cog,
                        equipment_screen()),
                  ],
                ),
              )),
            ],
          ),
        )
      ],
    );
  }

  void next_page(BuildContext context, Widget screen_name) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => (screen_name)));
  }

  Container container_method(
      double width_value,
      double circular_value,
      double icon_value,
      double font_value,
      String text_value,
      IconData icon,
      Widget ScreenName) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.brown, width: width_value),
          borderRadius: BorderRadius.all(Radius.circular(circular_value))),
      child: Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
            foregroundColor: MaterialStatePropertyAll(Colors.transparent),
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
            iconColor: MaterialStatePropertyAll(Colors.transparent),
            surfaceTintColor: MaterialStatePropertyAll(Colors.transparent),
          ),
          onPressed: () {
            next_page(context, ScreenName);
          },
          child: GridTile(
            child: Center(
              child: Text(
                '$text_value',
                style: TextStyle(color: Colors.white, fontSize: font_value),
              ),
            ),
            footer: Icon(
              icon,
              size: icon_size,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
