// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, non_constant_identifier_names, prefer_interpolation_to_compose_strings, prefer_adjacent_string_concatenation, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import '../tires_class.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Training_screen extends StatefulWidget {
  @override
  State<Training_screen> createState() => _Training_screen();
}

class _Training_screen extends State<Training_screen> {
  //T5 t5_troop = T5();
  //T4 t4_troop = T4();
  //T3 t3_troop = T3();
  //T2 t2_troop = T2();
  //T1 t1_troop = T1();
  //maping for classes implementing troop base class
  Map<int, Troop_base Function()> troops_T = {
    1: () => T1(),
    2: () => T2(),
    3: () => T3(),
    4: () => T4(),
    5: () => T5(),
  };
  Map<int, Troop Function()> infantryTMap = {
    1: () => inf_T1(),
    2: () => inf_T2(),
    3: () => inf_T3(),
    4: () => inf_T4(),
    5: () => inf_T5(),
  };
  Map<int, Troop Function()> cavTMap = {
    1: () => cav_T1(),
    2: () => cav_T2(),
    3: () => cav_T3(),
    4: () => cav_T4(),
    5: () => cav_T5(),
  };
  Map<int, Troop Function()> archTMap = {
    1: () => arch_T1(),
    2: () => arch_T2(),
    3: () => arch_T3(),
    4: () => arch_T4(),
    5: () => arch_T5(),
  };
  Map<int, Troop Function()> siegeTMap = {
    1: () => siege_T1(),
    2: () => siege_T2(),
    3: () => siege_T3(),
    4: () => siege_T4(),
    5: () => siege_T5(),
  };
  List troop_type_list = [];
  dynamic type_slect;
  void didChangeDependencies() {
    super.didChangeDependencies();
    troop_type_list = [
      '${AppLocalizations.of(context)?.infantry}',
      '${AppLocalizations.of(context)?.cavalry}',
      '${AppLocalizations.of(context)?.archer}',
      '${AppLocalizations.of(context)?.siege}'
    ];
    type_slect = '${AppLocalizations.of(context)?.infantry}';
  }

  List tires_list = [1, 2, 3, 4, 5];
  //shown values in screen
  String power_point = '0';
  String MGE_point = '0';
  String food_needed = '0';
  String wood_needed = '0';
  String stone_needed = ' 0';
  String gold_needed = '0';
  //optimising the result of calculated results to view in short form and transfer the value into the variables responsible of the values in screen
  String optimise_RSS_final_result(int optimised) {
    String shown_value;
    print(optimised);
    if (optimised >= 1000000 && optimised < 1000000000) {
      shown_value = (optimised / 1000000).toStringAsFixed(2) + ' M';
    } else if (optimised >= 1000000000) {
      shown_value = (optimised / 1000000000).toStringAsFixed(2) + ' B';
    } else if (optimised >= 1000 && optimised < 1000000) {
      shown_value = (optimised / 1000).toStringAsFixed(2) + ' K';
    } else {
      shown_value = optimised.toString();
    }
    return shown_value;
  }

  void overall_calculations(BuildContext context) {
    context = context;
    double percentage = ((double.tryParse(buff_amount.text) ?? 0) / 100);
    //speed up calculatioon
    void total_speed_up_calculation(
        int tire_base_speed_up, int tire_base_speed_down) {
      total_training_speed_up_needed =
          (((((double.tryParse(troops_amount.text) ?? 0) *
                      tire_base_speed_up)) /
                  ((1 + percentage))) -
              ((((double.tryParse(troops_amount.text) ?? 0) *
                      tire_base_speed_down)) /
                  (1 + percentage)));

      optimised_speed_up_needed();
    }

//mge points calculations
    void power_MGE_calculation(
        int power_base_troop_up,
        int power_base_troop_down,
        int MGE_value_base_up,
        int MGE_value_base_down) {
      int power_point_calculation = 0;
      int MGE_point_calculation = 0;
      power_point_calculation =
          ((int.tryParse(troops_amount.text) ?? 0) * power_base_troop_up) -
              ((int.tryParse(troops_amount.text) ?? 0) * power_base_troop_down);
      power_point = optimise_RSS_final_result(power_point_calculation);
      MGE_point_calculation =
          ((int.tryParse(troops_amount.text) ?? 0) * MGE_value_base_up) -
              ((int.tryParse(troops_amount.text) ?? 0) * MGE_value_base_down);
      MGE_point = optimise_RSS_final_result(MGE_point_calculation);
    }

//rss calculation
    void RSS_calculation(int tire_up, int tire_down) {
      int food_needed_calculation = 0;
      int wood_needed_calculation = 0;
      int stone_needed_calculation = 0;
      int gold_needed_calculation = 0;

      if (type_slect == '${AppLocalizations.of(context)?.infantry}') {
        var inf1 = infantryTMap[tire_up];
        var inf2 = infantryTMap[tire_down];

        if (inf1 != null) {
          if (inf2 != null) {
            food_needed_calculation =
                (((int.tryParse(troops_amount.text) ?? 0) *
                        inf1().food_needed_for_training) -
                    ((int.tryParse(troops_amount.text) ?? 0) *
                        inf2().food_needed_for_training));
            food_needed = optimise_RSS_final_result(food_needed_calculation);
            wood_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    inf1().wood_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    inf2().wood_needed_for_training);
            wood_needed = optimise_RSS_final_result(wood_needed_calculation);
            stone_needed_calculation =
                ((int.tryParse(troops_amount.text) ?? 0) *
                        inf1().stone_needed_for_training) -
                    ((int.tryParse(troops_amount.text) ?? 0) *
                        inf2().stone_needed_for_training);
            stone_needed = optimise_RSS_final_result(stone_needed_calculation);
            gold_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    inf1().gold_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    inf2().gold_needed_for_training);
            gold_needed = optimise_RSS_final_result(gold_needed_calculation);
          } else {
            food_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                inf1().food_needed_for_training);
            food_needed = optimise_RSS_final_result(food_needed_calculation);
            wood_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                inf1().wood_needed_for_training);
            wood_needed = optimise_RSS_final_result(wood_needed_calculation);
            stone_needed_calculation =
                ((int.tryParse(troops_amount.text) ?? 0) *
                    inf1().stone_needed_for_training);
            stone_needed = optimise_RSS_final_result(stone_needed_calculation);
            gold_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                inf1().gold_needed_for_training);
            gold_needed = optimise_RSS_final_result(gold_needed_calculation);
          }
        }
      }
      if (type_slect == "${AppLocalizations.of(context)?.cavalry}") {
        var cav1 = cavTMap[tire_up];
        var cav2 = cavTMap[tire_down];
        if (cav1 != null) {
          if (cav2 != null) {
            food_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    cav1().food_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    cav2().food_needed_for_training);
            food_needed = optimise_RSS_final_result(food_needed_calculation);
            wood_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    cav1().wood_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    cav2().wood_needed_for_training);
            wood_needed = optimise_RSS_final_result(wood_needed_calculation);
            stone_needed_calculation =
                ((int.tryParse(troops_amount.text) ?? 0) *
                        cav1().stone_needed_for_training) -
                    ((int.tryParse(troops_amount.text) ?? 0) *
                        cav2().stone_needed_for_training);
            stone_needed = optimise_RSS_final_result(stone_needed_calculation);
            gold_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    cav1().gold_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    cav2().gold_needed_for_training);
            gold_needed = optimise_RSS_final_result(gold_needed_calculation);
          } else {
            food_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                cav1().food_needed_for_training);
            food_needed = optimise_RSS_final_result(food_needed_calculation);

            wood_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                cav1().wood_needed_for_training);
            wood_needed = optimise_RSS_final_result(wood_needed_calculation);
            stone_needed_calculation =
                ((int.tryParse(troops_amount.text) ?? 0) *
                    cav1().stone_needed_for_training);
            stone_needed = optimise_RSS_final_result(stone_needed_calculation);
            gold_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                cav1().gold_needed_for_training);
            gold_needed = optimise_RSS_final_result(gold_needed_calculation);
          }
        }
      }
      if (type_slect == '${AppLocalizations.of(context)?.archer}') {
        var arch1 = archTMap[tire_up];
        var arch2 = archTMap[tire_down];
        if (arch1 != null) {
          if (arch2 != null) {
            food_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    arch1().food_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    arch2().food_needed_for_training);
            food_needed = optimise_RSS_final_result(food_needed_calculation);
            wood_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    arch1().wood_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    arch2().wood_needed_for_training);
            wood_needed = optimise_RSS_final_result(wood_needed_calculation);
            stone_needed_calculation =
                ((int.tryParse(troops_amount.text) ?? 0) *
                        arch1().stone_needed_for_training) -
                    ((int.tryParse(troops_amount.text) ?? 0) *
                        arch2().stone_needed_for_training);
            stone_needed = optimise_RSS_final_result(stone_needed_calculation);
            gold_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    arch1().gold_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    arch2().gold_needed_for_training);
            gold_needed = optimise_RSS_final_result(gold_needed_calculation);
          } else {
            food_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                arch1().food_needed_for_training);
            food_needed = optimise_RSS_final_result(food_needed_calculation);
            wood_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                arch1().wood_needed_for_training);
            wood_needed = optimise_RSS_final_result(wood_needed_calculation);
            stone_needed_calculation =
                ((int.tryParse(troops_amount.text) ?? 0) *
                    arch1().stone_needed_for_training);
            stone_needed = optimise_RSS_final_result(stone_needed_calculation);
            gold_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                arch1().gold_needed_for_training);
            gold_needed = optimise_RSS_final_result(gold_needed_calculation);
          }
        }
      }
      if (type_slect == '${AppLocalizations.of(context)?.siege}') {
        var siege1 = siegeTMap[tire_up];
        var siege2 = siegeTMap[tire_down];
        if (siege1 != null) {
          if (siege2 != null) {
            food_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    siege1().food_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    siege2().food_needed_for_training);
            food_needed = optimise_RSS_final_result(food_needed_calculation);
            wood_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    siege1().wood_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    siege2().wood_needed_for_training);
            wood_needed = optimise_RSS_final_result(wood_needed_calculation);
            stone_needed_calculation =
                ((int.tryParse(troops_amount.text) ?? 0) *
                        siege1().stone_needed_for_training) -
                    ((int.tryParse(troops_amount.text) ?? 0) *
                        siege2().stone_needed_for_training);
            stone_needed = optimise_RSS_final_result(stone_needed_calculation);
            gold_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                    siege1().gold_needed_for_training) -
                ((int.tryParse(troops_amount.text) ?? 0) *
                    siege2().gold_needed_for_training);
            gold_needed = optimise_RSS_final_result(gold_needed_calculation);
          } else {
            food_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                siege1().food_needed_for_training);
            food_needed = optimise_RSS_final_result(food_needed_calculation);
            wood_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                siege1().wood_needed_for_training);
            wood_needed = optimise_RSS_final_result(wood_needed_calculation);
            stone_needed_calculation =
                ((int.tryParse(troops_amount.text) ?? 0) *
                    siege1().stone_needed_for_training);
            stone_needed = optimise_RSS_final_result(stone_needed_calculation);
            gold_needed_calculation = ((int.tryParse(troops_amount.text) ?? 0) *
                siege1().gold_needed_for_training);
            gold_needed = optimise_RSS_final_result(gold_needed_calculation);
          }
        }
      }
    }

    if (!ischecked) {
      var troop_tire = troops_T[tier_list_selected];
      if (troop_tire != null) {
        total_speed_up_calculation(troop_tire().base_train_speed, 0);
        RSS_calculation(tier_list_selected, 0);
        power_MGE_calculation(
            troop_tire().base_power, 0, troop_tire().base_mge_point, 0);
      }
      //switch (tier_list_selected) {
      //  case 1:
      //    total_speed_up_calculation(t1_troop.base_train_speed, 0);
      //    RSS_calculation();
      //    power_MGE_calculation(t1_troop.base_power, t1_troop.base_mge_point);
      //    break;
      //  case 2:
      //    total_speed_up_calculation(t2_troop.base_train_speed, 0);
      //    RSS_calculation();
      //    power_MGE_calculation(t2_troop.base_power, t2_troop.base_mge_point);
      //    break;
      //  case 3:
      //    total_speed_up_calculation(t3_troop.base_train_speed, 0);
      //    RSS_calculation();
      //    power_MGE_calculation(t3_troop.base_power, t3_troop.base_mge_point);
      //    break;
      //  case 4:
      //    total_speed_up_calculation(t4_troop.base_train_speed, 0);
      //    RSS_calculation();
      //    power_MGE_calculation(t4_troop.base_power, t4_troop.base_mge_point);
      //    break;
      //  case 5:
      //    total_speed_up_calculation(t5_troop.base_train_speed, 0);
      //    RSS_calculation();
      //    power_MGE_calculation(t5_troop.base_power, t5_troop.base_mge_point);
      //    break;
      //  default:
      //}
    } else {
      var troop_tire_up = troops_T[tire_to_selected];
      var troop_tire_down = troops_T[tire_from_selected];
      if (troop_tire_down != null && troop_tire_up != null) {
        total_speed_up_calculation(troop_tire_up().base_train_speed,
            troop_tire_down().base_train_speed);
        RSS_calculation(tire_to_selected, tire_from_selected);
        power_MGE_calculation(
            troop_tire_up().base_power,
            troop_tire_down().base_power,
            troop_tire_up().base_mge_point,
            troop_tire_down().base_mge_point);
      }
    }
  }

//speed up values optimised
  void optimised_speed_up_needed() {
    var sec = (total_training_speed_up_needed % 60).toInt();
    total_training_speed_up_needed = total_training_speed_up_needed / 60;
    var day = (total_training_speed_up_needed ~/ 1440).toInt();
    var hour = ((total_training_speed_up_needed % 1440) ~/ 60).toInt();
    var min = (total_training_speed_up_needed % 60).toInt();
    total_training_speed_up_needed_shown_in_screen =
        '$day ' + 'd ' + '$hour ' + 'h ' + '$min ' + 'm ' + '$sec' + 's';
  }

  //lists for dropdown menu
  var total_training_speed_up_needed_shown_in_screen = '0';
  double total_training_speed_up_needed = 0;
  List tires_from = [1, 2, 3, 4];

  dynamic tire_from_selected = 1;
  List original_tires_from = [1, 2, 3, 4];

  List tires_to = [2, 3, 4, 5];
  dynamic tire_to_selected = 2;
  List original_tires_to = [2, 3, 4, 5];
  dynamic tier_list_selected = 1;

  //related variables
  bool ischecked = false;
  //text input controlers
  TextEditingController troops_amount = TextEditingController();
  TextEditingController buff_amount = TextEditingController();
  String error_text_buff = '';
  String error_text_troop_amount = '';
  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            "${AppLocalizations.of(context)?.training}",
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Stack(
          children: [
            //background imafe
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      opacity: 0.5,
                      image: AssetImage('images/training_wallpaper.jpg'),
                      fit: BoxFit.fill)),
            ),
            Padding(
              //padding all the page content
              padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 3, color: Colors.white.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(15)),
                child: Scrollbar(
                  thickness: 3,
                  thumbVisibility: true,
                  trackVisibility: true,
                  interactive: true,
                  radius: Radius.circular(15),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Checkbox(
                                //upgrade choice
                                side: BorderSide(color: Colors.black, width: 3),
                                value: ischecked,
                                onChanged: (value) {
                                  ischecked = value!;

                                  setState(() {
                                    power_point = '0';
                                    MGE_point = '0';
                                    total_training_speed_up_needed_shown_in_screen =
                                        '0';
                                    total_training_speed_up_needed = 0;
                                    food_needed = '0';
                                    stone_needed = '0';
                                    wood_needed = '0';
                                    gold_needed = '0';
                                    buff_amount.clear();
                                    troops_amount.clear();
                                  });
                                },
                              ),
                              Container(
                                child: Text(
                                  '${AppLocalizations.of(context)?.upgrade}',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                // for dropdown of troop type and text
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(1),
                                    border: Border.all(
                                        width: 3, color: Colors.black),
                                    borderRadius: BorderRadius.circular(15)),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    DropdownButton<dynamic>(
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.black.withOpacity(1)),
                                        // dropdown for type
                                        value: type_slect,
                                        items: troop_type_list
                                            .map<DropdownMenuItem<dynamic>>(
                                                (dynamic vlaue) {
                                          return DropdownMenuItem<dynamic>(
                                            value: vlaue,
                                            child: Text(vlaue.toString()),
                                          );
                                        }).toList(),
                                        onChanged: (dynamic selected) {
                                          type_slect = selected;
                                          setState(() {
                                            overall_calculations(context);
                                          });
                                        }),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        if (ischecked) upgrade_method(),
                        if (!ischecked) train_method(),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 3),
                          child: TextField(
                            //input training buff
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black.withOpacity(1)),
                            onChanged: (value) {
                              final type = int.tryParse(value);
                              if (type == null) {
                                error_text_buff =
                                    '${AppLocalizations.of(context)?.enteronlynumbers}';
                              } else {
                                error_text_buff = '';
                              }

                              setState(() {
                                overall_calculations(context);
                              });
                            },
                            decoration: InputDecoration(
                                errorText: error_text_buff.isEmpty
                                    ? null
                                    : error_text_buff,
                                errorStyle: TextStyle(
                                    fontSize: 20, color: Colors.red[900]),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Colors.white),
                                    borderRadius: BorderRadius.circular(15)),
                                labelText:
                                    '${AppLocalizations.of(context)?.trainingbuff}',
                                labelStyle: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black.withOpacity(1)),
                                hintText:
                                    '${AppLocalizations.of(context)?.hint_text_non_numerical}',
                                hintStyle: TextStyle(
                                    color: Colors.black, fontSize: 15)),

                            keyboardType: TextInputType.number,
                            controller: buff_amount,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          //input training amount
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black.withOpacity(1)),
                            onChanged: (value) {
                              final type = int.tryParse(value);
                              if (type == null) {
                                error_text_troop_amount =
                                    '${AppLocalizations.of(context)?.enteronlynumbers}';
                              } else {
                                error_text_troop_amount = '';
                              }

                              setState(() {
                                overall_calculations(context);
                              });
                            },
                            decoration: InputDecoration(
                                errorText: error_text_troop_amount.isEmpty
                                    ? null
                                    : error_text_troop_amount,
                                errorStyle: TextStyle(
                                    fontSize: 20, color: Colors.red[900]),
                                labelText:
                                    '${AppLocalizations.of(context)?.troopsamount}',
                                labelStyle: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black.withOpacity(1)),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3,
                                      color: Colors
                                          .white), // Border width and color when enabled
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                hintText:
                                    '${AppLocalizations.of(context)?.hint_text_non_numerical}',
                                hintStyle: TextStyle(
                                    color: Colors.black, fontSize: 15)),
                            keyboardType: TextInputType.number,
                            controller: troops_amount,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: double.infinity,
                          //speed needed result view

                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            '${AppLocalizations.of(context)?.totalamountofspeedupneeded}\n$total_training_speed_up_needed_shown_in_screen',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black.withOpacity(1)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          //rss needed result view
                          padding: EdgeInsets.all(5),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  '${AppLocalizations.of(context)?.rssneeded} ',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black.withOpacity(1)),
                                ),
                              ),
                              Text(
                                '${AppLocalizations.of(context)?.food} $food_needed',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black.withOpacity(1)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '${AppLocalizations.of(context)?.wood} $wood_needed',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black.withOpacity(1)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '${AppLocalizations.of(context)?.stone} $stone_needed ',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black.withOpacity(1)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '${AppLocalizations.of(context)?.gold} $gold_needed',
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black.withOpacity(1)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: double.infinity,
                          //mge and power points results view
                          // other results
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${AppLocalizations.of(context)?.power} $power_point',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black.withOpacity(1)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '${AppLocalizations.of(context)?.mgepoints} $MGE_point',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black.withOpacity(1)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  Center train_method() {
    //trining dropdown
    return Center(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                border: Border.all(width: 3, color: Colors.black),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                    child: Text(
                  '${AppLocalizations.of(context)?.tier}',
                  style: TextStyle(
                      fontSize: 25, color: Colors.black.withOpacity(1)),
                )),
                SizedBox(
                  width: 10,
                ),
                DropdownButton<dynamic>(
                    style: TextStyle(
                        fontSize: 25, color: Colors.black.withOpacity(1)),
                    value: tier_list_selected,
                    items: tires_list
                        .map<DropdownMenuItem<dynamic>>((dynamic value) {
                      return DropdownMenuItem<dynamic>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                    onChanged: (dynamic new_value) {
                      tier_list_selected = new_value;
                      setState(() {
                        overall_calculations(context);
                      });
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Center upgrade_method() {
    //upgrade dropdowm
    return Center(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                border: Border.all(width: 3, color: Colors.black),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Text(
                  '${AppLocalizations.of(context)?.from}',
                  style: TextStyle(
                      fontSize: 25, color: Colors.black.withOpacity(1)),
                ),
                SizedBox(
                  width: 10,
                ),
                DropdownButton<dynamic>(
                    style: TextStyle(
                        fontSize: 25, color: Colors.black.withOpacity(1)),
                    value: tire_from_selected,
                    items: tires_from
                        .map<DropdownMenuItem<dynamic>>((dynamic value) {
                      return DropdownMenuItem<dynamic>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                    onChanged: (dynamic new_value) {
                      tire_from_selected = new_value;
                      setState(() {
                        overall_calculations(context);
                      });
                    }),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                border: Border.all(width: 3, color: Colors.black),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Text(
                  '${AppLocalizations.of(context)?.to}',
                  style: TextStyle(
                      fontSize: 25, color: Colors.black.withOpacity(1)),
                ),
                SizedBox(
                  width: 10,
                ),
                DropdownButton<dynamic>(
                    style: TextStyle(color: Colors.black, fontSize: 25),
                    value: tire_to_selected,
                    items: tires_to
                        .map<DropdownMenuItem<dynamic>>((dynamic value) {
                      return DropdownMenuItem<dynamic>(
                        child: Text(value.toString()),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (dynamic new_value) {
                      setState(() {
                        tire_to_selected = new_value;
                        setState(() {
                          overall_calculations(context);
                        });
                      });
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
