// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rokapp/commander_screen/best_of/best_marchs.dart';
import 'package:rokapp/commander_screen/commander_detail_screen.dart';
import 'package:rokapp/commander_screen/commander_field_trees.dart';
import 'package:rokapp/commander_screen/commander_garrison_trees.dart';
import 'package:rokapp/commander_screen/commander_rally_trees.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'commander_classes.dart';

class commander_screen extends StatefulWidget {
  @override
  State<commander_screen> createState() => _commander_screen();
}

class _commander_screen extends State<commander_screen> {
  List<commander> commanders_list = [
    huo(),
    liu_che(),
    WW(),
    herman(),
    liang(),
    xiang_yu(),
    guan_yu(),
    ashurbanipal(),
    gorgo(),
    hera(),
    joan_of_arc(),
    justinian(),
    nevsky(),
    sargon(),
    scipio(),
    aemilianus(),
    tariq(),
    boudica(),
    henry(),
    zizka(),
    eleanor(),
    dido(),
    shajar(),
    yeong(),
  ];
  String image_commander_selected_path = '';
  String commander_name = '';
  String image_red_path = 'images/commander_images/labels/';
  String troop_type = '';
  String image_yellow_path = 'images/commander_images/labels/';
  String yellow_property = '';
  String image_blue_path = 'images/commander_images/labels/';
  String blue_property = '';
  int chosen_index = 0;
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    if (screen_width > screen_height) {
      double temp;
      temp = screen_width;
      screen_width = screen_height;
      screen_height = temp;
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 58, 58, 58),
        appBar: AppBar(
          title: Text(
            '${AppLocalizations.of(context)?.commanders}',
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.list));
            })
          ],
        ),
        endDrawer: Drawer(
          backgroundColor: Colors.grey[400],
          child: ListView(
            padding: EdgeInsets.fromLTRB(
                15, MediaQuery.of(context).size.height * 0.27, 15, 30),
            children: [
              drawer_buttons(context, best_field_marches(),
                  '${AppLocalizations.of(context)?.field_marchs}'),
              SizedBox(
                height: 10,
              ),
              drawer_buttons(context, best_inf_marches(),
                  '${AppLocalizations.of(context)?.infantry_marchs}'),
              SizedBox(
                height: 10,
              ),
              drawer_buttons(context, best_cav_marches(),
                  '${AppLocalizations.of(context)?.cavalry_marchs}'),
              SizedBox(
                height: 10,
              ),
              drawer_buttons(context, best_arch_marches(),
                  '${AppLocalizations.of(context)?.archer_marchs}'),
              SizedBox(
                height: 10,
              ),
              drawer_buttons(context, best_garrison_marches(),
                  '${AppLocalizations.of(context)?.garrison_pairs}'),
              SizedBox(
                height: 10,
              ),
              drawer_buttons(context, best_rally_marches(),
                  '${AppLocalizations.of(context)?.rally_pairs}'),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: screen_height * 0.05,
                  child: FloatingActionButton(
                      child: Icon(Icons.info),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                    '${AppLocalizations.of(context)?.important}'),
                                content: Text(
                                  "${AppLocalizations.of(context)?.alert_text}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black.withOpacity(1),
                                      height: 1),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("Close"),
                                  ),
                                ],
                              );
                            });
                      }))
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Expanded(
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(5),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemCount: commanders_list.length,
                    itemBuilder: (BuildContext context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Container(
                            child: InkWell(
                          child: Image(
                            image:
                                AssetImage(commanders_list[index].image_path),
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            image_commander_selected_path =
                                commanders_list[index].image_path;
                            commander_name =
                                commanders_list[index].name(context);
                            troop_type = commanders_list[index].troop_type;
                            yellow_property =
                                commanders_list[index].yellow_path;
                            blue_property = commanders_list[index].blue_path;
                            chosen_index = index;
                            setState(() {});
                          },
                        )),
                      );
                    }),
              ),
              SizedBox(
                width: screen_width * 0.001,
              ),
              Container(
                width: screen_width * 0.65,
                child: Column(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    child: Container(
                      width: screen_width * 0.20,
                      height: screen_height * 0.08,
                      child: Image.asset(
                        image_commander_selected_path.isNotEmpty
                            ? image_commander_selected_path
                            : commanders_list[0].image_path,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      commander_name.isNotEmpty
                          ? commander_name
                          : commanders_list[0].name(context),
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Container(
                    width: screen_width * 0.6,
                    height: screen_height * 0.025,
                    child: Row(
                      children: [
                        SizedBox(
                          width: screen_width * 0.03,
                        ),
                        Container(
                          child: Image.asset(
                            troop_type.isNotEmpty
                                ? image_red_path + troop_type + '.png'
                                : image_red_path +
                                    commanders_list[0].troop_type +
                                    '.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            yellow_property.isNotEmpty
                                ? image_yellow_path + yellow_property + '.png'
                                : image_yellow_path +
                                    commanders_list[0].yellow_path +
                                    '.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            blue_property.isNotEmpty
                                ? image_blue_path + blue_property + '.png'
                                : image_blue_path +
                                    commanders_list[0].blue_path +
                                    '.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screen_height * 0.035,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 95, 153, 99),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TabBar(
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      indicatorWeight: 3,
                      indicator: BoxDecoration(
                          color: Color.fromARGB(255, 51, 77, 53),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      tabs: [
                        Tab(
                          text: '${AppLocalizations.of(context)?.pairs}',
                        ),
                        Tab(
                          text: '${AppLocalizations.of(context)?.field_trees}',
                        ),
                        Tab(
                            text:
                                '${AppLocalizations.of(context)?.rally_trees}'),
                        Tab(
                          text:
                              '${AppLocalizations.of(context)?.garrison_trees}',
                        ),
                      ],
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      unselectedLabelStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      commander_overview(
                          the_chosen: commanders_list[chosen_index]),
                      (commander_field_trees(
                        the_chosen: commanders_list[chosen_index],
                      )),
                      (commander_rally_trees(
                        the_chosen: commanders_list[chosen_index],
                      )),
                      (commander_garrison_trees(
                        the_chosen: commanders_list[chosen_index],
                      )),
                    ]),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlinedButton drawer_buttons(
      BuildContext context, Widget next_screen, String the_text) {
    return OutlinedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>((5.0)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            enableFeedback: true,
            side: MaterialStateProperty.all(BorderSide(
              color: Colors.black,
              width: 2,
            )),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(Colors.purple),
            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
              fontSize: 20,
            ))),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => next_screen));
        },
        child: Text(
          '$the_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(1.5, 1.5),
                blurRadius: 4.0,
                color: Colors.black.withOpacity(1),
              ),
            ],
          ),
        ));
  }
}
