// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rokapp/tires_class.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class healing_scrren extends StatefulWidget {
  @override
  State<healing_scrren> createState() => _healing_screen();
}

class _healing_screen extends State<healing_scrren> {
  Map<dynamic, Troop_base Function()> troop_tire_map = {
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    troop_type = [
      '${AppLocalizations.of(context)?.infantry}',
      '${AppLocalizations.of(context)?.cavalry}',
      '${AppLocalizations.of(context)?.archer}',
      '${AppLocalizations.of(context)?.siege}'
    ];
    selected_troop_type = '${AppLocalizations.of(context)?.infantry}';
    total_healing_speed_up_needed_in_screen_shown =
        '${AppLocalizations.of(context)?.totalamountofspeedupneeded}=0';
  }

  String heal_buff_error = '';
  String alliance_help_error = '';
  String RSS_consumption_error = '';
  String troop_amount_error = '';
  TextEditingController healing_buff_controller = TextEditingController();
  TextEditingController RSS_consumption_controller = TextEditingController();
  TextEditingController alliance_help_num_controller = TextEditingController();
  TextEditingController troopa_amount_controller = TextEditingController();
  dynamic selected_troop_type = '';
  List troop_type = [];
  dynamic selected_troop_tire = 1;
  List troop_tire = [1, 2, 3, 4, 5];
  double total_healing_speed_up_needed = 0;
  String total_healing_speed_up_needed_in_screen_shown = '';

  String food_needed_view = '0';
  String wood_needed_view = '0';
  String stone_needed_view = '0';
  String gold_needed_view = '0';
  void overall_calculations() {
    //change the alliacne help value to 30 if it is bigger than 30
    if (alliance_help_num_controller.text.isNotEmpty) {
      if (double.tryParse(alliance_help_num_controller.text)! > 30.0) {
        alliance_help_num_controller.value = TextEditingValue(
            text: '30',
            selection:
                TextSelection.collapsed(offset: 2)); // Set cursor position);
      }
    }

    String optimise_RSS_final_result(int optimised) {
      String shown_value;
      //print(optimised);
      if (optimised >= 1000000 && optimised < 1000000000) {
        shown_value = (optimised / 1000000).toStringAsFixed(1) + ' M';
      } else if (optimised >= 1000000000) {
        shown_value = (optimised / 1000000000).toStringAsFixed(1) + ' B';
      } else if (optimised >= 1000 && optimised < 1000000) {
        shown_value = (optimised / 1000).toStringAsFixed(1) + ' K';
      } else {
        shown_value = optimised.toString();
      }
      return shown_value;
    }

    void optimised_speed_up_needed() {
      var sec = (total_healing_speed_up_needed % 60).toInt();
      total_healing_speed_up_needed = total_healing_speed_up_needed / 60;
      var day = (total_healing_speed_up_needed ~/ 1440).toInt();
      var hour = ((total_healing_speed_up_needed % 1440) ~/ 60).toInt();
      var min = (total_healing_speed_up_needed % 60).toInt();
      //total_training_speed_up_needed_shown_in_screen
      total_healing_speed_up_needed_in_screen_shown =
          '${AppLocalizations.of(context)?.totalamountofspeedupneeded} = ${day == 0 ? '' : day}' +
              '${day == 0 ? '' : 'd '}' +
              '${hour == 0 ? '' : hour}' +
              '${hour == 0 ? '' : 'h '}' +
              '${min == 0 ? '' : min}' +
              '${min == 0 ? '' : 'm '}' +
              '${sec == 0 ? '' : sec}' +
              '${sec == 0 ? '' : ' s'}';
    }

    //healing calculation
    if (selected_troop_tire == 1) {
      total_healing_speed_up_needed = 3;
      optimised_speed_up_needed();
    } else {
      double percentage =
          (((double.tryParse(healing_buff_controller.text) ?? 0) / 100));
      //speed up calculatioon
      total_healing_speed_up_needed =
          (((((double.tryParse(troopa_amount_controller.text) ?? 0) *
                  troop_tire_map[selected_troop_tire]!().base_heal_speed)) /
              ((1 + percentage))));
      if (total_healing_speed_up_needed > 18000) {
        total_healing_speed_up_needed = total_healing_speed_up_needed -
            (total_healing_speed_up_needed *
                ((double.tryParse(alliance_help_num_controller.text) ?? 0) /
                    100));
        print('$total_healing_speed_up_needed');
      } else {
        total_healing_speed_up_needed = total_healing_speed_up_needed -
            ((double.tryParse(alliance_help_num_controller.text) ?? 0) *
                3 *
                30);
      }

      print('$total_healing_speed_up_needed');
      if (total_healing_speed_up_needed > 0) {
        optimised_speed_up_needed();
      } else {
        total_healing_speed_up_needed = 0;
        total_healing_speed_up_needed_in_screen_shown =
            '${AppLocalizations.of(context)?.totalamountofspeedupneeded}=0';
      }
    }
    //RSS calculation
    int food_needed_calculation = 0;
    int wood_needed_calculation = 0;
    int stone_needed_calculation = 0;
    int gold_needed_calculation = 0;
    if (selected_troop_type == "${AppLocalizations.of(context)?.infantry}") {
      food_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              infantryTMap[selected_troop_tire]!().food_needed_for_healing);
      food_needed_calculation = (food_needed_calculation -
              (food_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      food_needed_view = optimise_RSS_final_result(food_needed_calculation);
      wood_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              infantryTMap[selected_troop_tire]!().wood_needed_for_healing);
      wood_needed_calculation = (wood_needed_calculation -
              (wood_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      wood_needed_view = optimise_RSS_final_result(wood_needed_calculation);

      stone_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              infantryTMap[selected_troop_tire]!().stone_needed_for_healing);
      stone_needed_calculation = (stone_needed_calculation -
              (stone_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      stone_needed_view = optimise_RSS_final_result(stone_needed_calculation);

      gold_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              infantryTMap[selected_troop_tire]!().gold_needed_for_healing);
      gold_needed_calculation = (gold_needed_calculation -
              (gold_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      gold_needed_view = optimise_RSS_final_result(gold_needed_calculation);
    }
    if (selected_troop_type == "${AppLocalizations.of(context)?.cavalry}") {
      food_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              cavTMap[selected_troop_tire]!().food_needed_for_healing);
      food_needed_calculation = (food_needed_calculation -
              (food_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      food_needed_view = optimise_RSS_final_result(food_needed_calculation);
      wood_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              cavTMap[selected_troop_tire]!().wood_needed_for_healing);
      wood_needed_calculation = (wood_needed_calculation -
              (wood_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      wood_needed_view = optimise_RSS_final_result(wood_needed_calculation);

      stone_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              cavTMap[selected_troop_tire]!().stone_needed_for_healing);
      stone_needed_calculation = (stone_needed_calculation -
              (stone_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      stone_needed_view = optimise_RSS_final_result(stone_needed_calculation);

      gold_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              cavTMap[selected_troop_tire]!().gold_needed_for_healing);
      gold_needed_calculation = (gold_needed_calculation -
              (gold_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      gold_needed_view = optimise_RSS_final_result(gold_needed_calculation);
    }
    if (selected_troop_type == "${AppLocalizations.of(context)?.archer}") {
      food_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              archTMap[selected_troop_tire]!().food_needed_for_healing);
      food_needed_calculation = (food_needed_calculation -
              (food_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      food_needed_view = optimise_RSS_final_result(food_needed_calculation);
      wood_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              archTMap[selected_troop_tire]!().wood_needed_for_healing);
      wood_needed_calculation = (wood_needed_calculation -
              (wood_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      wood_needed_view = optimise_RSS_final_result(wood_needed_calculation);

      stone_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              archTMap[selected_troop_tire]!().stone_needed_for_healing);
      stone_needed_calculation = (stone_needed_calculation -
              (stone_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      stone_needed_view = optimise_RSS_final_result(stone_needed_calculation);

      gold_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              archTMap[selected_troop_tire]!().gold_needed_for_healing);
      gold_needed_calculation = (gold_needed_calculation -
              (gold_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      gold_needed_view = optimise_RSS_final_result(gold_needed_calculation);
    }
    if (selected_troop_type == "${AppLocalizations.of(context)?.siege}") {
      food_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              siegeTMap[selected_troop_tire]!().food_needed_for_healing);
      food_needed_calculation = (food_needed_calculation -
              (food_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      food_needed_view = optimise_RSS_final_result(food_needed_calculation);
      wood_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              siegeTMap[selected_troop_tire]!().wood_needed_for_healing);
      wood_needed_calculation = (wood_needed_calculation -
              (wood_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      wood_needed_view = optimise_RSS_final_result(wood_needed_calculation);

      stone_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              siegeTMap[selected_troop_tire]!().stone_needed_for_healing);
      stone_needed_calculation = (stone_needed_calculation -
              (stone_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      stone_needed_view = optimise_RSS_final_result(stone_needed_calculation);

      gold_needed_calculation =
          ((int.tryParse(troopa_amount_controller.text) ?? 0) *
              siegeTMap[selected_troop_tire]!().gold_needed_for_healing);
      gold_needed_calculation = (gold_needed_calculation -
              (gold_needed_calculation *
                  (double.tryParse(RSS_consumption_controller.text) ?? 0) /
                  100))
          .toInt();
      gold_needed_view = optimise_RSS_final_result(gold_needed_calculation);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          '${AppLocalizations.of(context)?.healing}',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    opacity: 0.8,
                    image: AssetImage('images/healing_wallpaper.png'),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 3, color: Colors.black.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(15)),
              child: Scrollbar(
                trackVisibility: true,
                thumbVisibility: true,
                interactive: true,
                thickness: 3,
                radius: Radius.circular(15),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: Row(
                          children: [
                            Text(
                              '${AppLocalizations.of(context)?.tier}',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            DropdownButton(
                              style: TextStyle(
                                  fontSize: 25,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                              value: selected_troop_tire,
                              items: troop_tire.map<DropdownMenuItem<dynamic>>(
                                  (dynamic value) {
                                return DropdownMenuItem<dynamic>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                              onChanged: (dynamic selected) {
                                selected_troop_tire = selected;
                                overall_calculations();
                                setState(() {});
                              },
                              dropdownColor: Color.fromARGB(255, 255, 255, 255),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: Row(
                          children: [
                            Text(
                              '${AppLocalizations.of(context)?.type}',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            DropdownButton(
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                              value: selected_troop_type,
                              items: troop_type.map<DropdownMenuItem<dynamic>>(
                                  (dynamic value) {
                                return DropdownMenuItem<dynamic>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                              onChanged: (dynamic selected) {
                                selected_troop_type = selected;
                                overall_calculations();
                                setState(() {});
                              },
                              dropdownColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      text_field_method(
                          healing_buff_controller,
                          '${AppLocalizations.of(context)?.healing_buff}',
                          heal_buff_error,
                          context),
                      SizedBox(
                        height: 10,
                      ),
                      text_field_method(
                          alliance_help_num_controller,
                          '${AppLocalizations.of(context)?.alliance_help_count}',
                          alliance_help_error,
                          context),
                      SizedBox(
                        height: 10,
                      ),
                      text_field_method(
                          RSS_consumption_controller,
                          '${AppLocalizations.of(context)?.rss_reduction}',
                          RSS_consumption_error,
                          context),
                      SizedBox(
                        height: 10,
                      ),
                      text_field_method(
                          troopa_amount_controller,
                          '${AppLocalizations.of(context)?.troopsamount}',
                          troop_amount_error,
                          context),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: Text(
                          '${total_healing_speed_up_needed_in_screen_shown}',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                '${AppLocalizations.of(context)?.rssneeded}',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ),
                            Text(
                                '${AppLocalizations.of(context)?.food} $food_needed_view',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black)),
                            Text(
                                '${AppLocalizations.of(context)?.wood} $wood_needed_view',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black)),
                            Text(
                                '${AppLocalizations.of(context)?.stone} $stone_needed_view',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black)),
                            Text(
                                '${AppLocalizations.of(context)?.gold} $gold_needed_view',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextField text_field_method(TextEditingController controller,
      String label_text, String error_text_value, BuildContext context) {
    return TextField(
      onChanged: (value) {
        final type = int.tryParse(value);

        overall_calculations();
        setState(() {});
      },
      style: TextStyle(color: Colors.black, fontSize: 25),
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: '$label_text',
          labelStyle: TextStyle(color: Colors.black, fontSize: 25),
          hintText: '${AppLocalizations.of(context)?.hint_text_non_numerical}',
          hintStyle: TextStyle(color: Colors.black, fontSize: 15),
          errorText: error_text_value.isEmpty ? null : error_text_value,
          errorStyle: TextStyle(fontSize: 20, color: Colors.red[900]),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(width: 3, color: Colors.white))),
    );
  }
}
