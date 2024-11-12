import 'package:flutter/material.dart';
import 'package:rokapp/RSS_data/APData.dart';
import 'package:rokapp/RSS_data/BuildingSpeed.dart';
import 'package:rokapp/RSS_data/CornData.dart';
import 'package:rokapp/RSS_data/GemData.dart';
import 'package:rokapp/RSS_data/GoldData.dart';
import 'package:rokapp/RSS_data/HealingSpeed.dart';
import 'package:rokapp/RSS_data/ResearchSpeed.dart';
import 'package:rokapp/RSS_data/StoneData.dart';
import 'package:rokapp/RSS_data/TrainingSpeed.dart';
import 'package:rokapp/RSS_data/UniversalSpeed.dart';
import 'package:rokapp/RSS_data/VIPData.dart';
import 'package:rokapp/RSS_data/WoodData.dart';
import 'package:rokapp/RSS_data/XPData.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RSS_screen extends StatefulWidget {
  @override
  State<RSS_screen> createState() => _RSS_screen();
}

class _RSS_screen extends State<RSS_screen> {
  String corn_saved_data = '';
  String wood_saved_data = '';
  String stone_saved_data = '';
  String gold_saved_data = '';
  String gems_saved_data = '';
  String AP_saved_data = '';
  String XP_saved_data = '';
  String VIP_saved_data = '';
  String uni_speed_saved_data = '';
  String heal_speed_saved_data = '';
  String train_speed_saved_data = '';
  String research_speed_saved_data = '';
  String building_speed_saved_data = '';

  void save_data(String the_data, String new_data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(the_data, new_data);
    load_data();
  }

  void load_data() async {
    SharedPreferences perfs = await SharedPreferences.getInstance();
    corn_saved_data = perfs.getString('corn_saved_data') ?? '';
    wood_saved_data = perfs.getString('wood_saved_data') ?? '';
    stone_saved_data = perfs.getString('stone_saved_data') ?? '';
    gold_saved_data = perfs.getString('gold_saved_data') ?? '';
    gems_saved_data = perfs.getString('gems_saved_data') ?? '';
    AP_saved_data = perfs.getString('AP_saved_data') ?? '';
    XP_saved_data = perfs.getString('XP_saved_data') ?? '';
    VIP_saved_data = perfs.getString('VIP_saved_data') ?? '';
    uni_speed_saved_data = perfs.getString('uni_speed_saved_data') ?? '';
    heal_speed_saved_data = perfs.getString('heal_speed_saved_data') ?? '';
    train_speed_saved_data = perfs.getString('train_speed_saved_data') ?? '';
    research_speed_saved_data =
        perfs.getString('research_speed_saved_data') ?? '';
    building_speed_saved_data =
        perfs.getString('building_speed_saved_data') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    load_data();
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('${AppLocalizations.of(context)?.rss_and_data}'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'images/RSSBackground.jpg',
                    ),
                    fit: BoxFit.fill)),
          ),
          GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              container_method('corn.jpg', corn_data(
                saving: (String new_value) {
                  save_data('corn_saved_data', new_value);
                },
              ), corn_saved_data),
              container_method('wood.jpg', wood_data(
                saving: (String new_value) {
                  save_data('wood_saved_data', new_value);
                },
              ), wood_saved_data),
              container_method('stone.jpg', stone_data(
                saving: (String new_value) {
                  save_data('stone_saved_data', new_value);
                },
              ), stone_saved_data),
              container_method('gold.jpg', gold_data(
                saving: (String new_value) {
                  save_data('gold_saved_data', new_value);
                },
              ), gold_saved_data),
              container_method('gem.jpg', gem_data(
                saving: (String new_value) {
                  save_data('gems_saved_data', new_value);
                },
              ), gems_saved_data),
              container_method('AP.jpg', AP_data(
                saving: (String new_value) {
                  save_data('AP_saved_data', new_value);
                },
              ), AP_saved_data),
              container_method('vip.jpg', VIP_data(
                saving: (String new_value) {
                  save_data('VIP_saved_data', new_value);
                },
              ), VIP_saved_data),
              container_method('Tome_of_Knowledge.jpg', XP_data(
                saving: (String new_value) {
                  save_data('XP_saved_data', new_value);
                },
              ), XP_saved_data),
              container_method('train_speed.jpg', Training_speed_data(
                saving: (String new_value) {
                  save_data('train_speed_saved_data', new_value);
                },
              ), train_speed_saved_data),
              container_method('build_speed.jpg', Building_speed_data(
                saving: (String new_value) {
                  save_data('building_speed_saved_data', new_value);
                },
              ), building_speed_saved_data),
              container_method('research_speed.jpg', Research_speed_data(
                saving: (String new_value) {
                  save_data('research_speed_saved_data', new_value);
                },
              ), research_speed_saved_data),
              container_method('heal_speed.jpg', Healing_speed_data(
                saving: (String new_value) {
                  save_data('heal_speed_saved_data', new_value);
                },
              ), heal_speed_saved_data),
              container_method('universal_speed.jpg', Universal_speed_data(
                saving: (String new_value) {
                  save_data('uni_speed_saved_data', new_value);
                },
              ), uni_speed_saved_data),
            ],
          )
        ],
      ),
    );
  }

  void next_page(BuildContext context, Widget screen_name) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => (screen_name)));
  }

  Container container_method(
      String image_name, Widget screen_name, shown_value) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.amber),
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
              next_page(context, screen_name);
            },
            child: Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'images/$image_name',
                            ),
                            fit: BoxFit.fill)),
                    //child: Image(
                    //  image: AssetImage('images/$image_name'),
                    //  fit: BoxFit.fill,
                    //),
                  )),
              GridTile(
                child: Column(),
                footer: Center(
                  child: Text(
                    '$shown_value',
                    style: TextStyle(
                        color: Colors.black.withOpacity(1), fontSize: 25),
                  ),
                ),
              )
            ])),
      ),
    );
  }
}
