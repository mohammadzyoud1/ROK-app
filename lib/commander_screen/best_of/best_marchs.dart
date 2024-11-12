import 'package:flutter/material.dart';
import 'package:rokapp/commander_screen/commander_classes.dart';
import 'package:rokapp/commander_screen/image_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class best_field_marches extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocalizations.of(context)?.field_marchs}',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 3,
                    spreadRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Colors.black.withOpacity(0.2)),
            padding: EdgeInsets.all(5),
            height: double.infinity,
            width: double.infinity,
            child: Scrollbar(
              thickness: 3,
              thumbVisibility: true,
              trackVisibility: true,
              radius: Radius.circular(15),
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(8),
                children: [
                  marchs_container(screen_width, screen_height, context,
                      nevsky(), joan_of_arc(), 'field', 'cav'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context, huo(),
                      belisarius(), 'field', 'cav'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context,
                      guan_yu(), scipio(), 'field', 'inf'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context, WW(),
                      liu_che(), 'field', 'inf'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context,
                      liang(), herman(), 'field', 'arch'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class best_inf_marches extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocalizations.of(context)?.infantry_marchs}',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 3,
                    spreadRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Colors.black.withOpacity(0.2)),
            padding: EdgeInsets.all(5),
            height: double.infinity,
            width: double.infinity,
            child: Scrollbar(
              thickness: 3,
              thumbVisibility: true,
              trackVisibility: true,
              radius: Radius.circular(15),
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(8),
                children: [
                  marchs_container(screen_width, screen_height, context, WW(),
                      liu_che(), 'field', 'inf'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context,
                      guan_yu(), scipio(), 'field', 'inf'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class best_cav_marches extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocalizations.of(context)?.cavalry_marchs}',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 3,
                    spreadRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Colors.black.withOpacity(0.2)),
            padding: EdgeInsets.all(5),
            height: double.infinity,
            width: double.infinity,
            child: Scrollbar(
              thickness: 3,
              thumbVisibility: true,
              trackVisibility: true,
              radius: Radius.circular(15),
              child: ListView(
                padding: EdgeInsets.all(8),
                physics: BouncingScrollPhysics(),
                children: [
                  marchs_container(screen_width, screen_height, context,
                      nevsky(), joan_of_arc(), 'field', 'cav'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context, huo(),
                      wiliam(), 'field', 'cav'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context,
                      xiang_yu(), belisarius(), 'field', 'cav'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class best_arch_marches extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocalizations.of(context)?.archer_marchs}',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 3,
                    spreadRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Colors.black.withOpacity(0.2)),
            padding: EdgeInsets.all(5),
            height: double.infinity,
            width: double.infinity,
            child: Scrollbar(
              thickness: 3,
              thumbVisibility: true,
              trackVisibility: true,
              radius: Radius.circular(15),
              child: ListView(
                padding: EdgeInsets.all(8),
                physics: BouncingScrollPhysics(),
                children: [
                  marchs_container(screen_width, screen_height, context,
                      liang(), herman(), 'field', 'arch'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context,
                      shajar(), ashurbanipal(), 'field', 'arch'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context,
                      shajar(), YSG(), 'field', 'arch'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class best_garrison_marches extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocalizations.of(context)?.garrison_pairs}',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 3,
                    spreadRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Colors.black.withOpacity(0.2)),
            padding: EdgeInsets.all(5),
            height: double.infinity,
            width: double.infinity,
            child: Scrollbar(
              thickness: 3,
              thumbVisibility: true,
              trackVisibility: true,
              radius: Radius.circular(15),
              child: ListView(
                padding: EdgeInsets.all(8),
                physics: BouncingScrollPhysics(),
                children: [
                  marchs_container(screen_width, screen_height, context,
                      gorgo(), hera(), 'garrison', 'inf'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context,
                      zizka(), hera(), 'garrison', 'cav'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context,
                      eleanor(), hera(), 'garrison', 'cav'),
                  marchs_container(screen_width, screen_height, context,
                      yeong(), hera(), 'garrison', 'arch'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class best_rally_marches extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocalizations.of(context)?.rally_pairs}',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 3,
                    spreadRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Colors.black.withOpacity(0.2)),
            padding: EdgeInsets.all(5),
            height: double.infinity,
            width: double.infinity,
            child: Scrollbar(
              thickness: 3,
              thumbVisibility: true,
              trackVisibility: true,
              radius: Radius.circular(15),
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(8),
                children: [
                  marchs_container(screen_width, screen_height, context,
                      justinian(), nevsky(), 'rally', 'cav'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context,
                      tariq(), aemilianus(), 'rally', 'inf'),
                  SizedBox(
                    height: screen_height * 0.02,
                  ),
                  marchs_container(screen_width, screen_height, context,
                      tariq(), pakal(), 'rally', 'inf'),
                  marchs_container(screen_width, screen_height, context,
                      ashurbanipal(), liang(), 'rally', 'arch'),
                  marchs_container(screen_width, screen_height, context,
                      henry(), liang(), 'rally', 'arch'),
                  marchs_container(screen_width, screen_height, context,
                      ashurbanipal(), henry(), 'rally', 'arch'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void to_march_details_screen(BuildContext context, commander first_commander,
    commander second_commander, String march_uses, String march_type) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => marchs_details(
                first_commander: first_commander,
                second_commander: second_commander,
                march_uses: march_uses,
                march_type: march_type,
              )));
}

class marchs_details extends StatelessWidget {
  late commander first_commander;
  late commander second_commander;
  late String march_uses;
  late String march_type;
  List all_trees = [];
  List all_gears = [];
  marchs_details(
      {required this.first_commander,
      required this.second_commander,
      required this.march_uses,
      required this.march_type});

  @override
  Widget build(BuildContext context) {
    all_trees.addAll(march_uses == 'field'
        ? first_commander.field_tree_paths
        : march_uses == 'garrison'
            ? first_commander.garrison_tree_paths
            : march_uses == 'rally'
                ? first_commander.rally_tree_paths
                : []);
    all_trees.addAll(march_uses == 'field'
        ? second_commander.field_tree_paths
        : march_uses == 'garrison'
            ? second_commander.garrison_tree_paths
            : march_uses == 'rally'
                ? second_commander.rally_tree_paths
                : []);
    all_gears.addAll(march_uses == 'field'
        ? first_commander.field_gears
        : march_uses == 'garrison'
            ? first_commander.garrison_gears
            : march_uses == 'rally'
                ? first_commander.rally_gears
                : []);
    //if (march_type == 'inf' && march_uses == 'field') {
    //  all_gears.addAll();
    //} else if (march_type == 'inf' && march_uses == 'rally') {
    //  all_gears.addAll(['images/commander_images/gears/$march']);
    //} else if (march_type == 'inf' && march_uses == 'garrison') {
    //  all_gears.addAll();
    //} else if (march_type == 'cav' && march_uses == 'field') {
    //  all_gears.addAll();
    //} else if (march_type == 'cav' && march_uses == 'rally') {
    //  all_gears.addAll();
    //} else if (march_type == 'cav' && march_uses == 'garrison') {
    //  all_gears.addAll();
    //} else if (march_type == 'arch' && march_uses == 'field') {
    //  all_gears.addAll();
    //} else if (march_type == 'arch' && march_uses == 'rally') {
    //  all_gears.addAll();
    //} else if (march_type == 'arch' && march_uses == 'garrison') {
    //  all_gears.addAll();
    //}
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    if (screen_width > screen_height) {
      double temp;
      temp = screen_width;
      screen_width = screen_height;
      screen_height = temp;
    }
    int talent_trees_num = all_trees.length;
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text(
          '${AppLocalizations.of(context)?.march_details}',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(width: 3),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //commanders image
                  height: screen_height * 0.2,
                  child: Row(
                    children: [
                      Expanded(
                          child: Card(
                              shape: CircleBorder(),
                              elevation: 15,
                              color: Colors.white.withOpacity(0.7),
                              shadowColor: Colors.amber,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: screen_width * 0.40,
                                  height: screen_width * 0.40,
                                  child: ClipOval(
                                      child: Image.asset(
                                    first_commander.image_path,
                                    fit: BoxFit.contain,
                                  )),
                                ),
                              ))),
                      Expanded(
                          child: Card(
                              shape: CircleBorder(),
                              elevation: 15,
                              color: Colors.white.withOpacity(0.7),
                              shadowColor: Colors.amber,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: screen_width * 0.40,
                                  height: screen_width * 0.40,
                                  child: ClipOval(
                                      child: Image.asset(
                                    second_commander.image_path,
                                    fit: BoxFit.contain,
                                  )),
                                ),
                              )))
                    ],
                  ),
                ),
                SizedBox(
                  height: screen_height * 0.02,
                ),
                Container(
                    child: Text(
                  '${AppLocalizations.of(context)?.recommnded_equipments_and_talents}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: screen_height * 0.02,
                ),
                Container(
                  width: double.infinity,
                  height: screen_height * 0.3,

                  //trees images
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: talent_trees_num,
                      padding: EdgeInsets.all(10),
                      itemBuilder: (BuildContext context, index) {
                        return Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image_view(
                                            image_path: all_trees[index])));
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    width: screen_width * 0.38,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 7,
                                            spreadRadius: 3,
                                            blurStyle: BlurStyle.solid,
                                          )
                                        ]),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      child: Image.asset(
                                        all_trees[index],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Center(
                                      child: Icon(
                                        Icons.zoom_out_map_rounded,
                                        color: Colors.white,
                                        size: screen_width * 0.08,
                                        shadows: [
                                          Shadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            blurRadius: 4,
                                            offset: Offset(2, 2),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: screen_width * 0.02,
                            )
                          ],
                        );
                      }),
                ),
                Container(
                    width: double.infinity,
                    height: screen_height * 0.3,
                    //equipments images
                    child: ListView.builder(
                        padding: EdgeInsets.all(10),
                        scrollDirection: Axis.horizontal,
                        itemCount: all_gears.length,
                        itemBuilder: (BuildContext context, num) {
                          return Row(
                            children: [
                              Container(
                                width: screen_width * 0.38,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.amberAccent,
                                          blurRadius: 7,
                                          spreadRadius: 3,
                                          blurStyle: BlurStyle.solid)
                                    ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    all_gears[num],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screen_width * 0.02,
                              )
                            ],
                          );
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Stack marchs_container(
    double screen_width,
    double screen_height,
    BuildContext context,
    commander first,
    commander second,
    String march_uses,
    march_type) {
  print('$screen_width $screen_height');
  return Stack(
    children: [
      Container(
        height: screen_height * 0.25,
        width: double.infinity,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.amber.withOpacity(0.7),
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
            color: Colors.grey[350]),
        child: Material(
          borderRadius: BorderRadius.circular(15),
          color: Colors.transparent,
          elevation: 15,
          child: Ink(
            decoration: BoxDecoration(
              // Same color as the container
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              splashColor:
                  Colors.white.withOpacity(1), // Custom ripple effect color
              highlightColor: Colors.blue[400]?.withOpacity(0.5),
              onTap: () {
                to_march_details_screen(
                    context, first, second, march_uses, march_type);
              },
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset(
                          first.image_path,
                          fit: BoxFit.fill,
                          height: screen_height * 0.2,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset(
                          second.image_path,
                          fit: BoxFit.fill,
                          height: screen_height * 0.2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Positioned(
          bottom: 15,
          right: 20,
          child: Icon(
            Icons.arrow_forward_sharp,
            size: screen_height * 0.045,
            color: Colors.amberAccent,
          ))
    ],
  );
}
