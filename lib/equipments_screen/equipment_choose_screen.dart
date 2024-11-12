// ignore_for_file: sort_child_properties_last, no_logic_in_create_state
import 'package:flutter/material.dart';
import 'package:rokapp/equipmets_classes/accessories.dart';
import 'package:rokapp/equipmets_classes/boots_classes.dart';
import 'package:rokapp/equipmets_classes/chests_classes.dart';
import 'package:rokapp/equipmets_classes/gloves_classes.dart';
import 'package:rokapp/equipmets_classes/helms_classes.dart';
import 'package:rokapp/equipmets_classes/legs_classes.dart';
import 'package:rokapp/equipmets_classes/weapons_classes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

int conuter = 0;

class equipment_choose extends StatefulWidget {
  int queue;
  List equip_type_list_stats;
  int equipments_number;
  String list_name_iterate;
  final void Function(String, String, String) press_data;
  final void Function(int, double, String, List) equip_stats_update;
  equipment_choose(
      {required this.queue,
      required this.equip_type_list_stats,
      required this.equipments_number,
      required this.list_name_iterate,
      required this.press_data,
      required this.equip_stats_update});
  @override
  State<equipment_choose> createState() => _equipment_choose(
        equipments_number: equipments_number,
        list_name_iterate: list_name_iterate,
      );
}

class _equipment_choose extends State<equipment_choose> {
  String list_name_iterate;
  int equipments_number;
  _equipment_choose({
    required this.equipments_number,
    required this.list_name_iterate,
  });
  void didChangeDependencies() {
    super.didChangeDependencies();
    refine_type = [
      '${AppLocalizations.of(context)?.none}',
      '${AppLocalizations.of(context)?.infantry}',
      '${AppLocalizations.of(context)?.cavalry}',
      '${AppLocalizations.of(context)?.archer}',
      '${AppLocalizations.of(context)?.siege}',
      '${AppLocalizations.of(context)?.leadership}',
    ];
    refine_type_select = '${AppLocalizations.of(context)?.none}';
    refine_value = 0;
  }

  List refine_type = [];
  dynamic refine_type_select = '';
  late double refine_value;

  List<weapons> weapon = [
    dragons_breath_bow(),
    scepter_of_the_glorious_goddess(),
    shield_of_the_eternal_empire(),
    sacred_dominion(),
    hummer_of_the_sun_and_moon(),
    the_hydras_blast(),
    lance_of_the_hellish_wasteland(),
    trial_of_the_lost_kingdom(),
    twilight_epiphany(),
    golden_age(),
    heart_of_the_saint(),
    sakura_fubuki(),
    knights_oathsworn_bow(),
    blazing_axe(),
    staff_of_the_lost(),
    gatekeepers_shield(),
    vanguard_halberd(),
    blessed_blade(),
  ];
  List<helms> helm = [
    gold_helm_of_the_eternal_empire(),
    helm_of_the_conqueror(),
    war_helm_of_the_hellish_wasteland(),
    pride_of_khan(),
    dragons_breath_helm(),
    ancestral_mask_of_night(),
    diadem_of_the_glorious_goddess(),
    fierce_wolfs_helmet(),
    witchs_lineage(),
    abyssal_visage(),
    revival_helm(),
    kinghts_steel_diadem(),
    expedition_war_helm(),
    windswept_war_helm(),
    helm_of_fear(),
    helm_of_the_phoenix(),
  ];

  List<chests> chest = [
    the_milky_way(),
    hope_cloak(),
    shadow_legions_retribution(),
    plate_of_the_eternal_empire(),
    heavy_armor_of_the_hellish_wasteland(),
    dragons_breath_plate(),
    vigilant_wolfs_leather_armor(),
    plate_of_the_gloriousgoddess(),
    revival_palte(),
    darks_lords_blessing(),
    quinns_soul(),
    knights_valorous_cloak(),
    windswpet_breastplate(),
    commanders_heavy_armor(),
    infantry_breastplate(),
    milanese_plate(),
  ];
  List<gloves> glove = [
    ians_choice(),
    navars_control(),
    sacred_grips(),
    vambraces_of_the_eternal_empire(),
    armband_of_the_hellish_wasteland(),
    dragons_breath_vambraces(),
    wailing_wolfs_guantlets(),
    guantlets_of_the_glorious_goddess(),
    revival_gunatlets(),
    isets_sufferance(),
    seths_brutality(),
    knights_battleworn_guantlets(),
    windswept_bracers(),
    saints_song(),
    calvins_hand(),
    leather_gloves(),
    bronze_bracers(),
  ];
  List<legs> leg = [
    eternal_night(),
    tassets_of_the_war_god(),
    ash_of_the_dawn(),
    greaves_of_the_eternal_empire(),
    tassets_of_the_hellish_wasteland(),
    dragons_breath_tassets(),
    lone_wolfs_leather_tassets(),
    chausses_of_the_gloirous_goddess(),
    revival_greaves(),
    fanatics_tassets(),
    karuaks_humility(),
    gladiator(),
    knights_triumphant_tassets(),
    greaves_of_the_exile(),
    sentry_breeches(),
    vanguard_greaves(),
    ranger_trousers(),
  ];
  List<boots> boot = [
    commanders_boots(),
    shios_return(),
    mountain_crushers(),
    greaves_of_the_glorious_goddess(),
    sturdy_boots_of_the_eternal_empire(),
    boots_of_the_hellish_wasteland(),
    dragons_breath_boots(),
    roaring_wolfs_claws(),
    flame_treads(),
    frost_treads(),
    cloud_racers(),
    knights_winter_sabatons(),
    the_scarlet_hounds(),
    windswept_boots(),
    edged_boots(),
    boots_of_reverence(),
  ];
  List<accessories> accessory = [
    ring_of_doom(),
    greatest_glory(),
    pendant_of_the_eternal_night(),
    horn_of_fury(),
    concealed_dagger(),
    scolas_lucky_coin(),
    vengeance(),
    immolating_plume(),
    karuak_s_war_drums(),
    moras_web(),
    seths_call(),
    wind_scars(),
    ancient_stratagems(),
    delanes_amulet(),
    silent_trial(),
    call_of_the_loyal(),
    savage_totem(),
  ];
//rounding the values for refine
  double value_rounding(double value) {
    return (value * 2).round() / 2.0;
  }

  @override
  //te decide wihch equip type to open for choosing
  Widget build(BuildContext context) {
    Map<String, List> equip_type = {
      'helms': helm,
      'chests': chest,
      'gloves': glove,
      'legs': leg,
      'boots': boot,
      'weapons': weapon,
      'accessories1': accessory,
      'accessories2': accessory,
    };

    final bottomvalue = MediaQuery.of(context).viewInsets.bottom;
    //list accordign to the chosen equipment type
    var iterate = equip_type[list_name_iterate]; //the equipment type

    return Scaffold(
      backgroundColor: Colors.grey[700],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        //upper page
        title: Text(
          '${AppLocalizations.of(context)?.equipments}',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(10, 50, 10, bottomvalue),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(1),
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Text(
                          '${AppLocalizations.of(context)?.refine}',
                          style: TextStyle(
                              fontSize: 25, color: Colors.black.withOpacity(1)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        DropdownButton<dynamic>(
                            //refine dropbutton
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black.withOpacity(1)),
                            value: refine_type_select,
                            items: refine_type.map<DropdownMenuItem<dynamic>>(
                              (dynamic value) {
                                return DropdownMenuItem<dynamic>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              },
                            ).toList(),
                            onChanged: (dynamic selected) {
                              setState(() {
                                refine_type_select = selected;
                              });
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                // eqeuip view
                child: ListView.builder(
                    shrinkWrap: false,
                    itemCount: equipments_number,
                    itemBuilder: (BuildContext context, index) {
                      conuter = 0;
                      var properties_lsit = property_finder(iterate, index);
                      return Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(border: Border.all()),
                        padding: EdgeInsets.all(10),
                        child: InkWell(
                          //button inkwell
                          overlayColor: MaterialStatePropertyAll(Colors.blue),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // image of equipments
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        '${iterate?[index].image_path}',
                                        fit: BoxFit.fill,
                                        height: 100,
                                        width: 100,
                                      ),
                                      !refine_type_select.toString().contains(
                                              '${AppLocalizations.of(context)?.none}')
                                          ? Positioned(
                                              width: 30,
                                              height: 30,
                                              right: 10,
                                              bottom: 10,
                                              child: Image.asset(
                                                'images/equipments_icons/${refine_type_select.toString().contains('${AppLocalizations.of(context)?.infantry}') ? 'infantry' : refine_type_select.toString().contains('${AppLocalizations.of(context)?.cavalry}') ? 'cavalry' : refine_type_select.toString().contains('${AppLocalizations.of(context)?.archer}') ? 'archer' : refine_type_select.toString().contains('${AppLocalizations.of(context)?.siege}') ? 'siege' : refine_type_select.toString().contains('${AppLocalizations.of(context)?.leadership}') ? 'leadership' : ''}_refine_icon.png',
                                                fit: BoxFit.fill,
                                              ),
                                            )
                                          : SizedBox.shrink()
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                //data section
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        decoration:
                                            BoxDecoration(color: Colors.amber),
                                        child: Text(
                                          '${iterate?[index].equipment_name}',
                                          style: TextStyle(fontSize: 15),
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                        children: List.generate(
                                      //generate stats text
                                      conuter,
                                      (index) {
                                        //stats icon
                                        String icon_type = '';
                                        properties_lsit[index].toString().contains(
                                                '${AppLocalizations.of(context)?.infantry}')
                                            ? icon_type = 'inf'
                                            : '';
                                        properties_lsit[index].toString().contains(
                                                '${AppLocalizations.of(context)?.cavalry}')
                                            ? icon_type = 'cav'
                                            : '';
                                        properties_lsit[index].toString().contains(
                                                '${AppLocalizations.of(context)?.archer}')
                                            ? icon_type = 'archer'
                                            : '';
                                        properties_lsit[index].toString().contains(
                                                '${AppLocalizations.of(context)?.siege}')
                                            ? icon_type = 'siege'
                                            : '';
                                        properties_lsit[index].toString().contains(
                                                '${AppLocalizations.of(context)?.troop}')
                                            ? icon_type = 'troop'
                                            : '';

                                        if (index % 2 == 0) {
                                          if (refine_type_select ==
                                              '${AppLocalizations.of(context)?.none}') {
                                            refine_value = 0;
                                            return Row(
                                              children: [
                                                Container(
                                                  width: 15,
                                                  height: 15,
                                                  child: Image.asset(
                                                    'images/equipments_icons/${icon_type}_icon.png',
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                    '${properties_lsit[index]}${properties_lsit[index + 1]}%')
                                              ],
                                            );
                                          } else {
                                            refine_value = value_rounding(
                                                properties_lsit[index + 1] *
                                                    0.33);
                                            return Row(
                                              children: [
                                                Container(
                                                  width: 15,
                                                  height: 15,
                                                  child: Image.asset(
                                                      'images/equipments_icons/${icon_type}_icon.png'),
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                    '${properties_lsit[index]}${properties_lsit[index + 1]}% + $refine_value %'),
                                              ],
                                            );
                                          }
                                        }
                                        return SizedBox(
                                          width: 1,
                                        );
                                      },
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            double local_refine_value = 0;
                            for (int i = 0; i < 30; i++) {
                              //here reseting the the list type stats for updating to the new chosen equipment so not to add the new chossen equipment stats with the previous one from the same equipment type
                              widget.equip_type_list_stats[widget.queue][i] =
                                  0.0;
                            }
                            if (iterate != accessory) {
                              //if the stats is bigger than  0 it mens the stats has value in the chosen equipment so equipment stats needs to updated
                              if (iterate?[index].infantry_attack > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].infantry_attack * 0.33);
                                }
                                widget.equip_stats_update(
                                    0,
                                    (iterate?[index].infantry_attack +
                                        local_refine_value),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].infantry_defense > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].infantry_defense * 0.33);
                                }
                                widget.equip_stats_update(
                                    1,
                                    ((iterate?[index].infantry_defense +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].infantry_health > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].infantry_health * 0.33);
                                }
                                widget.equip_stats_update(
                                    2,
                                    ((iterate?[index].infantry_health +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].cavalry_attack > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].cavalry_attack * 0.33);
                                }
                                widget.equip_stats_update(
                                    3,
                                    ((iterate?[index].cavalry_attack +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].cavalry_defense > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].cavalry_defense * 0.33);
                                }
                                widget.equip_stats_update(
                                    4,
                                    ((iterate?[index].cavalry_defense +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].cavalry_health > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].cavalry_health * 0.33);
                                }
                                widget.equip_stats_update(
                                    5,
                                    ((iterate?[index].cavalry_health +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].archer_attack > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].archer_attack * 0.33);
                                }
                                widget.equip_stats_update(
                                    6,
                                    ((iterate?[index].archer_attack +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].archer_defense > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].archer_defense * 0.33);
                                }
                                widget.equip_stats_update(
                                    7,
                                    ((iterate?[index].archer_defense +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].archer_health > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].archer_health * 0.33);
                                }
                                widget.equip_stats_update(
                                    8,
                                    ((iterate?[index].archer_health +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].siege_attack > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].siege_attack * 0.33);
                                }
                                widget.equip_stats_update(
                                    9,
                                    ((iterate?[index].siege_attack +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].siege_defense > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].siege_defense * 0.33);
                                }
                                widget.equip_stats_update(
                                    10,
                                    ((iterate?[index].siege_defense +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].siege_health > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].siege_health * 0.33);
                                }
                                widget.equip_stats_update(
                                    11,
                                    ((iterate?[index].siege_health +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].troop_attack > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].troop_attack * 0.33);
                                }
                                widget.equip_stats_update(
                                    12,
                                    ((iterate?[index].troop_attack +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].troop_defense > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].troop_defense * 0.33);
                                }
                                widget.equip_stats_update(
                                    13,
                                    ((iterate?[index].troop_defense +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].troop_health > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].troop_health * 0.33);
                                }
                                widget.equip_stats_update(
                                    14,
                                    ((iterate?[index].troop_health +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].infantry_base_attack > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].infantry_base_attack *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    15,
                                    (iterate?[index].infantry_base_attack +
                                        local_refine_value),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].infantry_base_defense > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].infantry_base_defense *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    16,
                                    ((iterate?[index].infantry_base_defense +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].infantry_base_health > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].infantry_base_health *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    17,
                                    ((iterate?[index].infantry_base_health +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].cavalry_base_attack > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].cavalry_base_attack *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    18,
                                    ((iterate?[index].cavalry_base_attack +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].cavalry_base_defense > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].cavalry_base_defense *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    19,
                                    ((iterate?[index].cavalry_base_defense +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].cavalry_base_health > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].cavalry_base_health *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    20,
                                    ((iterate?[index].cavalry_base_health +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].archer_base_attack > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].archer_base_attack *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    21,
                                    ((iterate?[index].archer_base_attack +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].archer_base_defense > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].archer_base_defense *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    22,
                                    ((iterate?[index].archer_base_defense +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].archer_base_health > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].archer_base_health *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    23,
                                    ((iterate?[index].archer_base_health +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].siege_base_attack > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].siege_base_attack * 0.33);
                                }
                                widget.equip_stats_update(
                                    24,
                                    ((iterate?[index].siege_base_attack +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].siege_base_defense > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].siege_base_defense *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    25,
                                    ((iterate?[index].siege_base_defense +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].siege_base_health > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].siege_base_health * 0.33);
                                }
                                widget.equip_stats_update(
                                    26,
                                    ((iterate?[index].siege_base_health +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].troop_base_attack > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].troop_base_attack * 0.33);
                                }
                                widget.equip_stats_update(
                                    27,
                                    ((iterate?[index].troop_base_attack +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].troop_base_defense > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].troop_base_defense *
                                          0.33);
                                }
                                widget.equip_stats_update(
                                    28,
                                    ((iterate?[index].troop_base_defense +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }
                              if (iterate?[index].troop_base_health > 0) {
                                if (refine_type_select ==
                                    '${AppLocalizations.of(context)?.none}') {
                                  local_refine_value = 0;
                                } else {
                                  local_refine_value = value_rounding(
                                      iterate?[index].troop_base_health * 0.33);
                                }
                                widget.equip_stats_update(
                                    29,
                                    ((iterate?[index].troop_base_health +
                                        local_refine_value)),
                                    list_name_iterate,
                                    widget.equip_type_list_stats);
                              }

                              widget.press_data(
                                  list_name_iterate,
                                  iterate?[index].image_path,
                                  refine_type_select);
                              Navigator.pop(context);
                            } else {
                              if (refine_type_select ==
                                  '${AppLocalizations.of(context)?.none}') {
                                local_refine_value = 0;
                              } else {
                                local_refine_value = value_rounding(
                                    iterate?[index].troop_base_health * 0.33);
                              }
                              widget.equip_stats_update(
                                  29,
                                  ((iterate?[index].troop_base_health +
                                      local_refine_value)),
                                  list_name_iterate,
                                  widget.equip_type_list_stats);
                              widget.press_data(
                                  list_name_iterate,
                                  iterate?[index].image_path,
                                  refine_type_select);
                              Navigator.pop(context);
                            }
                          },
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }

//equipments data extraction for chossing list show data
  List property_finder(List<dynamic>? iterate, int index) {
    List properties = [];
    List prop1 = [];
    List prop2 = [];
    //accessory has no data so check condition is added  prevent error of iterating an empty datas
    if (iterate != accessory) {
      //check each troop type stats and addign its name to their coresponding lists then gathering them togather to show inside  the equipments inkwell

      if (iterate?[index].infantry_attack > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.infantry_attack} = ');
        prop2.add(iterate?[index].infantry_attack);
      }
      if (iterate?[index].infantry_defense > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.infantry_defense} = ');
        prop2.add(iterate?[index].infantry_defense);
      }
      if (iterate?[index].infantry_health > 0) {
        conuter += 1;
        prop1.add('${AppLocalizations.of(context)?.infantry_health} = ');

        prop2.add(iterate?[index].infantry_health);
      }
      if (iterate?[index].cavalry_attack > 0) {
        conuter += 1;
        prop1.add('${AppLocalizations.of(context)?.cavalry_attack} = ');

        prop2.add(iterate?[index].cavalry_attack);
      }
      if (iterate?[index].cavalry_defense > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.cavalry_defense} = ');
        prop2.add(iterate?[index].cavalry_defense);
      }
      if (iterate?[index].cavalry_health > 0) {
        conuter += 1;
        prop1.add('${AppLocalizations.of(context)?.cavalry_health} = ');
        prop2.add(iterate?[index].cavalry_health);
      }
      if (iterate?[index].archer_attack > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.archer_attack} = ');
        prop2.add(iterate?[index].archer_attack);
      }
      if (iterate?[index].archer_defense > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.archer_defense} = ');
        prop2.add(iterate?[index].archer_defense);
      }
      if (iterate?[index].archer_health > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.archer_health} = ');
        prop2.add(iterate?[index].archer_health);
      }
      if (iterate?[index].siege_attack > 0) {
        conuter += 1;
        prop1.add('${AppLocalizations.of(context)?.siege_attack} = ');
        prop2.add(iterate?[index].siege_attack);
      }
      if (iterate?[index].siege_defense > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.siege_defense} = ');
        prop2.add(iterate?[index].siege_defense);
      }
      if (iterate?[index].siege_health > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.siege_health} = ');
        prop2.add(iterate?[index].siege_health);
      }
      if (iterate?[index].troop_attack > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.troop_attack} = ');

        prop2.add(iterate?[index].troop_attack);
      }
      if (iterate?[index].troop_defense > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.troop_defense} = ');
        prop2.add(iterate?[index].troop_defense);
      }
      if (iterate?[index].troop_health > 0) {
        conuter += 1;

        prop1.add('${AppLocalizations.of(context)?.troop_health} = ');
        prop2.add(iterate?[index].troop_health);
      }
      conuter = conuter * 2;
      int max = 0;
      //merging stats name and it is stats data togather
      for (int i = 0; i < (prop2.length) - 1; i++) {
        max = i;
        for (int j = i + 1; j < prop2.length; j++) {
          if (prop2[j] > prop2[max]) {
            max = j;
          }
          double temp = prop2[max];
          prop2[max] = prop2[i];
          prop2[i] = temp;
          var temp2 = prop1[max];
          prop1[max] = prop1[i];
          prop1[i] = temp2;
        }
      }
      for (int i = 0; i < prop1.length; i++) {
        properties.add(prop1[i]);
        properties.add(prop2[i]);
      }

      return properties;
    } else {
      return ['gggg rrrrr'];
    }
  }
}
