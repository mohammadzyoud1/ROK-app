// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rokapp/equipments_screen/equipment_choose_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class equipment_screen extends StatefulWidget {
  @override
  State<equipment_screen> createState() => _equipment_screen();
}

class _equipment_screen extends State<equipment_screen> {
  //initial list datas for each equip sim with it is data
  List helm_selected = [false, false];
  List gloves_selected = [false, false];
  List chest_selected = [false, false];
  List weapon_selected = [false, false];
  List leg_selected = [false, false];
  List boot_selected = [false, false];
  List accessory_selected1 = [false, false];
  List accessory_selected2 = [false, false];

  List helm_selected_iamge_path = ['', ''];
  List glove_selected_iamge_path = ['', ''];
  List chest_selected_iamge_path = ['', ''];
  List weapon_selected_iamge_path = ['', ''];
  List leg_selected_iamge_path = ['', ''];
  List boot_selected_iamge_path = ['', ''];
  List accessory_selected_iamge_path1 = ['', ''];
  List accessory_selected_iamge_path2 = ['', ''];

  List refine_helms = ['', ''];
  List refine_chests = ['', ''];
  List refine_legs = ['', ''];
  List refine_boots = ['', ''];
  List refine_gloves = ['', ''];
  List refine_weapoons = ['', ''];
  List refine_accessories1 = ['', ''];
  List refine_accessories2 = ['', ''];

  List stats_value = [
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
  ];
  List stats_name = [];
  void didChangeDependencies() {
    super.didChangeDependencies();
    stats_name = [
      '${AppLocalizations.of(context)?.infantry_attack}',
      '${AppLocalizations.of(context)?.infantry_defense}',
      '${AppLocalizations.of(context)?.infantry_health}',
      '${AppLocalizations.of(context)?.cavalry_attack}',
      '${AppLocalizations.of(context)?.cavalry_defense}',
      '${AppLocalizations.of(context)?.cavalry_health}',
      '${AppLocalizations.of(context)?.archer_attack}',
      '${AppLocalizations.of(context)?.archer_defense}',
      '${AppLocalizations.of(context)?.archer_health}',
      '${AppLocalizations.of(context)?.siege_attack}',
      '${AppLocalizations.of(context)?.siege_defense}',
      '${AppLocalizations.of(context)?.siege_health}',
      '${AppLocalizations.of(context)?.troop_attack}',
      '${AppLocalizations.of(context)?.troop_defense}',
      '${AppLocalizations.of(context)?.troop_health}',
      '${AppLocalizations.of(context)?.infantry_base_attack}',
      '${AppLocalizations.of(context)?.infantry_base_defense}',
      '${AppLocalizations.of(context)?.infantry_base_health}',
      '${AppLocalizations.of(context)?.cavalry_base_attack}',
      '${AppLocalizations.of(context)?.cavalry_base_defense}',
      '${AppLocalizations.of(context)?.cavalry_base_health}',
      '${AppLocalizations.of(context)?.archer_base_attack}',
      '${AppLocalizations.of(context)?.archer_base_defense}',
      '${AppLocalizations.of(context)?.archer_base_health}',
      '${AppLocalizations.of(context)?.siege_base_attack}',
      '${AppLocalizations.of(context)?.siege_base_defense}',
      '${AppLocalizations.of(context)?.siege_base_health}',
      '${AppLocalizations.of(context)?.troop_base_attack}',
      '${AppLocalizations.of(context)?.troop_base_defense}',
      '${AppLocalizations.of(context)?.troop_base_health}',
      //'infantry attack',
      //'infantry defense',
      //'infantry health',
      //'cavalry attack',
      //'cavalry defense',
      //'cavalry health',
      //'archer attack',
      //'archer defense',
      //'archer health',
      //'siege attack',
      //'siege defense',
      //'siege health',
      //'troop attack',
      //'troop defense',
      //'troop health',
      //'infantry base attack',
      //'infantry base defense',
      //'infantry base health',
      //'cavalry base attack',
      //'cavalry base defense',
      //'cavalry base health',
      //'archer base attack',
      //'archer base defense',
      //'archer base health',
      //'siege base attack',
      //'siege base defense',
      //'siege base health',
      //'troop base attack',
      //'troop base defense',
      //'troop base health',
    ];
    filter_list = [
      '${AppLocalizations.of(context)?.none}',
      '${AppLocalizations.of(context)?.infantry}',
      '${AppLocalizations.of(context)?.cavalry}',
      '${AppLocalizations.of(context)?.archer}',
      '${AppLocalizations.of(context)?.siege}',
      '${AppLocalizations.of(context)?.troop}'
    ];
    filter_selected = '${AppLocalizations.of(context)?.none}';
  }

  List helm_stats = [
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
  ];
  List chest_stats = [
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
  ];
  List leg_stats = [
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
  ];
  List boot_stats = [
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
  ];
  List weapon_stats = [
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
  ];
  List glove_stats = [
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
  ];
  List accessory1 = [
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
  ];
  List accessory2 = [
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
    [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ],
  ];
  bool is_compare = false;

  //update values for one type equipment
  void equip_stats_update(int queue, int index_value, double sum_value,
      String equip_type_to_get_list_type, List equip_type_stats) {
    //queue the gear number, index value stats repsentator in the equip stats list /sum_value the stats value of the chosen equipment
    // equip type stats  holder
    //  لا تنسى تراجع استخدام equip_type_to get_list_type
    equip_type_stats[queue][index_value] = sum_value;
    // print(equip_type_stats[index_value]);
    setState(() {});
  }

//choosing op for set simulation
  void getting_values_from_choose_screen(
      int queue, String eq_type, String eq_path, String refine) {
    switch (eq_type) {
      case 'helms':
        helm_selected_iamge_path[queue] = eq_path;
        helm_selected[queue] = true;
        refine_helms[queue] = refine;
        break;
      case 'chests':
        chest_selected_iamge_path[queue] = eq_path;
        chest_selected[queue] = true;
        refine_chests[queue] = refine;
        break;
      case 'gloves':
        glove_selected_iamge_path[queue] = eq_path;
        gloves_selected[queue] = true;
        refine_gloves[queue] = refine;
        break;

      case 'weapons':
        weapon_selected_iamge_path[queue] = eq_path;
        weapon_selected[queue] = true;
        refine_weapoons[queue] = refine;
        break;

      case 'legs':
        leg_selected_iamge_path[queue] = eq_path;
        leg_selected[queue] = true;
        refine_legs[queue] = refine;
        break;
      case 'boots':
        boot_selected_iamge_path[queue] = eq_path;
        boot_selected[queue] = true;
        refine_boots[queue] = refine;
        break;
      case 'accessories1':
        accessory_selected_iamge_path1[queue] = eq_path;
        accessory_selected1[queue] = true;
        refine_accessories1[queue] = refine;
      case 'accessories2':
        accessory_selected_iamge_path2[queue] = eq_path;
        accessory_selected2[queue] = true;
        refine_accessories2[queue] = refine;
    }
    setState(() {});
  }

//all calculation stats to show in screen
  void totalstats_calc(int queue) {
    //stat value is  total calculation   of each equipment type ,each troop type  stats  for each equopemnts is taken from corosponding equipment list
    for (int i = 0; i < 30; i++) {
      stats_value[queue][i] = helm_stats[queue][i] +
          weapon_stats[queue][i] +
          glove_stats[queue][i] +
          leg_stats[queue][i] +
          chest_stats[queue][i] +
          boot_stats[queue][i] +
          accessory1[queue][i] +
          accessory2[queue][i];
    }
  }

  dynamic filter_selected = '';
  List filter_list = [];

  int show_item_count = 0;
  int total_item_count = 30;
  List filter_list_stats = [
    [],
    [],
  ];
  List filter_list_stats_name = [];

  void filter_list_update(int queue) {
    //to update the stats data accordign to the selected troop type
    filter_list_stats = [[], []];
    filter_list_stats_name = [];
    for (int i = 0; i < total_item_count; i++) {
      if (stats_name[i].toString().contains(filter_selected)) {
        filter_list_stats[queue].add(stats_value[queue][i]);

        filter_list_stats_name.add(stats_name[i]);
      }
      if (stats_name[i]
              .toString()
              .contains('${AppLocalizations.of(context)?.troop}') &&
          filter_selected != '${AppLocalizations.of(context)?.troop}') {
        filter_list_stats[queue].add(stats_value[queue][i]);
        filter_list_stats_name.add(stats_name[i]);
      }
    }
    //setState(() {});
    show_item_count = filter_list_stats[0].length + filter_list_stats[1].length;
  }

  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    Map<String, List> equip_stats = {
      'helms': helm_stats,
      'chests': chest_stats,
      'weapons': weapon_stats,
      'legs': leg_stats,
      'boots': boot_stats,
      'gloves': glove_stats,
      'accessories1': accessory1,
      'accessories2': accessory2,
    };
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      backgroundColor: Colors.grey[700],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shadowColor: Colors.black,
        backgroundColor: Colors.grey[700],
        title: Text(
          "${AppLocalizations.of(context)?.equipments}",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'images/equipments/equipment_background.png'),
                    fit: BoxFit.fill,
                    opacity: 0.5)),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 15, bottomInset),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                                side: BorderSide(color: Colors.black, width: 3),
                                value: is_compare,
                                onChanged: (value) {
                                  is_compare = value!;
                                  if (!is_compare) {
                                    //no comparison then no second gear
                                    for (int i = 0; i < 30; i++) {
                                      glove_stats[1][i] = 0.0;
                                      weapon_stats[1][i] = 0.0;
                                      helm_stats[1][i] = 0.0;
                                      chest_stats[1][i] = 0.0;
                                      leg_stats[1][i] = 0.0;
                                      boot_stats[1][i] = 0.0;
                                    }

                                    helm_selected[1] = false;
                                    gloves_selected[1] = false;
                                    chest_selected[1] = false;
                                    leg_selected[1] = false;
                                    boot_selected[1] = false;
                                    weapon_selected[1] = false;
                                  }

                                  setState(() {});
                                }),
                            Text(
                              '${AppLocalizations.of(context)?.compare}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screen_width * 0.05,
                      ),
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(width: 3, color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          children: [
                            Text(
                              '${AppLocalizations.of(context)?.filter}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            SizedBox(
                              width: screen_width * 0.02,
                            ),
                            DropdownButton<dynamic>(
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black.withOpacity(1)),
                                items: filter_list
                                    .map<DropdownMenuItem<dynamic>>(
                                        (dynamic value) {
                                  return DropdownMenuItem<dynamic>(
                                      value: value,
                                      child: (Text(value.toString())));
                                }).toList(),
                                value: filter_selected,
                                onChanged: (dynamic selected) {
                                  filter_selected = selected;
                                  if (filter_selected ==
                                      '${AppLocalizations.of(context)?.none}') {
                                    //reset filter data if filter status is none
                                    show_item_count = 30;
                                    filter_list_stats = [[], []];
                                    filter_list_stats_name = [];
                                  }
                                  setState(() {});
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screen_height * 0.03,
                  ),
                  Container(
                    height: screen_height * 1,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: is_compare ? 2 : 1,
                        itemBuilder: (BuildContext context, queue) {
                          totalstats_calc(queue);
                          if (filter_selected ==
                              '${AppLocalizations.of(context)?.none}') {
                            show_item_count = 30;
                          } else {
                            filter_list_update(queue);
                          }
                          return Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  //containers for equipments view
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: screen_height * 0.06,
                                      ),
                                      container_of_equipmnts(
                                        queue,
                                        'weapons',
                                        weapon_selected[queue],
                                        weapon_selected_iamge_path[queue],
                                        equip_stats['weapons']!,
                                        refine_weapoons[queue],
                                      ),
                                      SizedBox(
                                        height: screen_height * 0.02,
                                      ),
                                      container_of_equipmnts(
                                        queue,
                                        'accessories1',
                                        accessory_selected1[queue],
                                        accessory_selected_iamge_path1[queue],
                                        equip_stats['accessories1']!,
                                        refine_accessories1[queue],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screen_width * 0.005,
                                  ),
                                  Column(
                                    children: [
                                      container_of_equipmnts(
                                        queue,
                                        'helms',
                                        helm_selected[queue],
                                        helm_selected_iamge_path[queue],
                                        equip_stats['helms']!,
                                        refine_helms[queue],
                                      ),
                                      SizedBox(
                                        height: screen_height * 0.005,
                                      ),
                                      container_of_equipmnts(
                                        queue,
                                        'chests',
                                        chest_selected[queue],
                                        chest_selected_iamge_path[queue],
                                        equip_stats['chests']!,
                                        refine_chests[queue],
                                      ),
                                      SizedBox(
                                        height: screen_height * 0.005,
                                      ),
                                      container_of_equipmnts(
                                        queue,
                                        'legs',
                                        leg_selected[queue],
                                        leg_selected_iamge_path[queue],
                                        equip_stats['legs']!,
                                        refine_legs[queue],
                                      ),
                                      SizedBox(
                                        height: screen_height * 0.005,
                                      ),
                                      container_of_equipmnts(
                                        queue,
                                        'boots',
                                        boot_selected[queue],
                                        boot_selected_iamge_path[queue],
                                        equip_stats['boots']!,
                                        refine_boots[queue],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screen_width * 0.005,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: screen_height * 0.06,
                                      ),
                                      container_of_equipmnts(
                                        queue,
                                        'gloves',
                                        gloves_selected[queue],
                                        glove_selected_iamge_path[queue],
                                        equip_stats['gloves']!,
                                        refine_gloves[queue],
                                      ),
                                      SizedBox(
                                        height: screen_height * 0.02,
                                      ),
                                      container_of_equipmnts(
                                        queue,
                                        'accessories2',
                                        accessory_selected2[queue],
                                        accessory_selected_iamge_path2[queue],
                                        equip_stats['accessories2']!,
                                        refine_accessories2[queue],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      'images/equipments/stats_background2.png',
                                      width: screen_width * 0.53,
                                      //width: 210,
                                      //height: 550,
                                      height: screen_height * 0.72,
                                      fit: BoxFit.fill,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(show_item_count,
                                          (index) {
                                        //stats show
                                        if (filter_selected ==
                                            '${AppLocalizations.of(context)?.none}') {
                                          if (stats_value[queue][index] > 0) {
                                            String icon_path = '';
                                            stats_name[index].toString().contains(
                                                    '${AppLocalizations.of(context)?.infantry}')
                                                ? icon_path =
                                                    'images/equipments_icons/inf_icon.png'
                                                : '';
                                            stats_name[index].toString().contains(
                                                    '${AppLocalizations.of(context)?.archer}')
                                                ? icon_path =
                                                    'images/equipments_icons/archer_icon.png'
                                                : '';
                                            stats_name[index].toString().contains(
                                                    '${AppLocalizations.of(context)?.cavalry}')
                                                ? icon_path =
                                                    'images/equipments_icons/cav_icon.png'
                                                : '';
                                            stats_name[index].toString().contains(
                                                    '${AppLocalizations.of(context)?.troop}')
                                                ? icon_path =
                                                    'images/equipments_icons/troop_icon.png'
                                                : '';
                                            stats_name[index].toString().contains(
                                                    '${AppLocalizations.of(context)?.siege}')
                                                ? icon_path =
                                                    'images/equipments_icons/siege_icon.png'
                                                : '';
                                            return Row(
                                              children: [
                                                Image.asset(
                                                  icon_path,
                                                  //width: 20,
                                                  //height: 20,
                                                  width: screen_width * 0.032,
                                                  height: screen_height * 0.032,
                                                ),
                                                Text(
                                                  '${stats_name[index]} = ${stats_value[queue][index].toString()}',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            );
                                          }
                                        } else {
                                          if (filter_list_stats[queue][index] >
                                              0) {
                                            String icon_path = '';
                                            filter_list_stats_name[index]
                                                    .toString()
                                                    .contains(
                                                        '${AppLocalizations.of(context)?.infantry}')
                                                ? icon_path =
                                                    'images/equipments_icons/inf_icon.png'
                                                : '';
                                            filter_list_stats_name[index]
                                                    .toString()
                                                    .contains(
                                                        '${AppLocalizations.of(context)?.archer}')
                                                ? icon_path =
                                                    'images/equipments_icons/archer_icon.png'
                                                : '';
                                            filter_list_stats_name[index]
                                                    .toString()
                                                    .contains(
                                                        '${AppLocalizations.of(context)?.cavalry}')
                                                ? icon_path =
                                                    'images/equipments_icons/cav_icon.png'
                                                : '';
                                            filter_list_stats_name[index]
                                                    .toString()
                                                    .contains(
                                                        '${AppLocalizations.of(context)?.troop}')
                                                ? icon_path =
                                                    'images/equipments_icons/troop_icon.png'
                                                : '';
                                            filter_list_stats_name[index]
                                                    .toString()
                                                    .contains(
                                                        '${AppLocalizations.of(context)?.siege}')
                                                ? icon_path =
                                                    'images/equipments_icons/siege_icon.png'
                                                : '';
                                            return Row(
                                              children: [
                                                Image.asset(
                                                  icon_path,
                                                  //width: 20,
                                                  //height: 20,
                                                  width: screen_width * 0.032,
                                                  height: screen_height * 0.032,
                                                ),
                                                Text(
                                                  '${filter_list_stats_name[index]} = ${filter_list_stats[queue][index].toString()}',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            );
                                          }
                                        }
                                        return SizedBox.shrink();
                                      }),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//gear  constructor
  Stack container_of_equipmnts(
    int queue,
    String equipment_type,
    bool selected,
    String image_path,
    List equip_type_for_list_stats,
    String refine,
  ) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    //queue the gear index value .equipmenrt type is detemine the equipment type ,
    late int number;
    late String list_name_to_iterate_for_next_page;
    return Stack(
      children: [
        Container(
          //width: 50,
          //height: 50,
          width: screen_width * 0.127,
          height: screen_height * 0.061,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  width: !selected ? 3 : 0,
                  color: !selected
                      ? Colors.black
                      : Color.fromARGB(255, 255, 255, 255).withOpacity(0))),
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            overlayColor: MaterialStatePropertyAll(!selected
                ? Colors.white.withOpacity(1)
                : Colors.white.withOpacity(0)),
            child: selected
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Image.asset(
                          '$image_path',
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        !refine.toString().contains(
                                '${AppLocalizations.of(context)?.none}')
                            ? Positioned(
                                width: 30,
                                height: 30,
                                right: 3,
                                bottom: 3,
                                child: Image.asset(
                                  'images/equipments_icons/${refine.toString().contains('${AppLocalizations.of(context)?.infantry}') ? 'infantry' : refine.toString().contains('${AppLocalizations.of(context)?.cavalry}') ? 'cavalry' : refine.toString().contains('${AppLocalizations.of(context)?.archer}') ? 'archer' : refine.toString().contains('${AppLocalizations.of(context)?.siege}') ? 'siege' : refine.toString().contains('${AppLocalizations.of(context)?.leadership}') ? 'leadership' : ''}_refine_icon.png',
                                  fit: BoxFit.fill,
                                ),
                              )
                            : SizedBox.shrink()
                      ],
                    ))
                : Icon(
                    Icons.add,
                    size: 25,
                    color: Colors.black,
                  ),
            onTap: () {
              switch (equipment_type) {
                //data neded for equipment choosing screen . number to determine the equipment number of that type
                //list name to iterate to determine which equipment type  equipments to open
                case 'helms':
                  number = 16;
                  list_name_to_iterate_for_next_page = 'helms';
                  break;
                case 'weapons':
                  number = 18;
                  list_name_to_iterate_for_next_page = 'weapons';
                  break;
                case 'chests':
                  number = 16;
                  list_name_to_iterate_for_next_page = 'chests';

                  break;
                case 'gloves':
                  number = 17;
                  list_name_to_iterate_for_next_page = 'gloves';
                  break;
                case 'legs':
                  number = 17;
                  list_name_to_iterate_for_next_page = 'legs';
                  break;
                case 'boots':
                  number = 16;
                  list_name_to_iterate_for_next_page = 'boots';
                  break;
                case 'accessories1':
                  number = 17;
                  list_name_to_iterate_for_next_page = 'accessories1';
                  break;
                case 'accessories2':
                  number = 17;
                  list_name_to_iterate_for_next_page = 'accessories2';
                  break;
              }
              setState(() {});
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => equipment_choose(
                            queue: queue,
                            equipments_number: number,
                            list_name_iterate:
                                list_name_to_iterate_for_next_page,
                            press_data: (String selected, String image_path,
                                String refine) {
                              //to update the equip simulation
                              getting_values_from_choose_screen(
                                  queue, selected, image_path, refine);
                            },
                            equip_stats_update: (index_value,
                                sum_value,
                                equip_type_to_get_list_type,
                                equip_type_for_list) {
                              equip_stats_update(
                                  //for updating the data according to the chosen equip
                                  queue,
                                  index_value,
                                  sum_value,
                                  equip_type_to_get_list_type,
                                  equip_type_for_list);
                            },
                            equip_type_list_stats: equip_type_for_list_stats,
                          )));
            },
          ),
        ),
        selected
            ? Positioned(
                //top: 0,
                right: screen_width * 0.01,
                top: -screen_height * 0.005,
                // right: 0.0,
                child: SizedBox(
                  //height: 20,
                  //width: 20,
                  height: screen_height * 0.04,
                  width: screen_width * 0.05,

                  child: IconButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.brown),
                      iconColor: MaterialStatePropertyAll(Colors.blue),
                      overlayColor: MaterialStatePropertyAll(Colors.red),
                    ),
                    padding: EdgeInsetsDirectional.all(0),
                    onPressed: () {
                      setState(() {
                        //zeroing the stats of equipment type and the slected and reset the image
                        selected = !selected;
                        //if condition to to prevent iterating empty lists as the accessories has no stats data
                        //if (equipment_type != 'accessories1' &&
                        //    equipment_type != 'accessories2')

                        for (int i = 0; i < 30; i++) {
                          //reseting the equipment type data for the removed equipments
                          equip_type_for_list_stats[queue][i] = 0.0;
                        }

                        //to chagne the selected to false
                        switch (equipment_type) {
                          case 'helms':
                            helm_selected[queue] = false;
                            break;
                          case 'gloves':
                            gloves_selected[queue] = false;
                            break;
                          case 'chests':
                            chest_selected[queue] = false;
                            break;
                          case 'legs':
                            leg_selected[queue] = false;
                            break;
                          case 'boots':
                            boot_selected[queue] = false;
                            break;
                          case 'weapons':
                            weapon_selected[queue] = false;
                            break;
                          case 'accessories1':
                            accessory_selected1[queue] = false;
                            print(accessory_selected1);
                            break;
                          case 'accessories2':
                            accessory_selected2[queue] = false;
                            print(accessory_selected2);
                            break;
                        }
                      });
                    },
                    icon: Icon(
                      Icons.close,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              )
            : SizedBox.shrink()
      ],
    );
  }
}
