import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class commander {
  String name(BuildContext context) {
    return '';
  }

  String blue_path = '';
  String yellow_path = '';
  String troop_type = '';
  String general_speech_about_the_commander(BuildContext context) {
    return '';
  }

  List paired_commanders_field = [];
  List paired_commanders_garrison = [];
  List paired_commanders_rally = [];

  List field_tree_paths = [];
  List general_speech_about_field_tree(BuildContext context) {
    return [];
  }

  List field_tree_stats = [];

  List rally_tree_paths = [];
  List general_speech_about_rally_tree(BuildContext context) {
    return [];
  }

  List rally_tree_stats = [];

  List garrison_tree_paths = [];
  List general_speech_about_garrison_tree(BuildContext context) {
    return [];
  }

  List garrison_tree_stats = [];

  List field_gears = [];
  List garrison_gears = [];
  List rally_gears = [];
  String general_speech_about_field_gear(BuildContext context) {
    return '';
  }

  String general_speech_about_rally_gear(BuildContext context) {
    return '';
  }

  String general_speech_about_garrison_gear(BuildContext context) {
    return '';
  }

  String general_speech_about_field(BuildContext context) {
    return '${AppLocalizations.of(context)?.this_commander_is_not_recommended_for_field}';
  }

  String general_speech_about_rally(BuildContext context) {
    return '${AppLocalizations.of(context)?.this_commander_is_not_recommended_for_rally}';
  }

  String general_speech_about_garrison(BuildContext context) {
    return '${AppLocalizations.of(context)?.this_commander_is_not_recommended_for_garrison}';
  }

  String recommended_accessories = '';

  String image_path = '';
}

class nevsky extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.alexnder_nevsky}';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'cavalry';
  @override
  List get paired_commanders_field => [
        joan_of_arc(),
        wiliam(),
        mehmed(),
        honda(),
        mina(),
      ];
  @override
  List get paired_commanders_rally => [justinian()];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutnevsky}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/nevsky/field tree/tree.png',
        'images/commander_images/commanders/nevsky/field tree/tree1.png'
      ];
  @override
  List get field_tree_stats => [
        [7, 7, 8, 18],
        [8.5, 6, 9, 24]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.nevsky_tree_field_1,
      AppLocalizations.of(context)!.nevsky_tree_field_2
    ];
  }

  @override
  List get rally_tree_paths => [
        'images/commander_images/commanders/nevsky/rally tree/tree.png',
        'images/commander_images/commanders/nevsky/rally tree/tree1.png'
      ];
  @override
  List get rally_tree_stats => [
        [7, 7, 8, 18],
        [8.5, 6, 9, 24]
      ];
  @override
  List general_speech_about_rally_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.nevsky_tree_rally_1,
      AppLocalizations.of(context)!.nevsky_tree_rally_2
    ];
  }

  @override
  List get field_gears => [
        'images/commander_images/gears/cav field/gear.png',
        'images/commander_images/gears/cav field/gear1.png',
        'images/commander_images/gears/cav field/gear2.png',
        'images/commander_images/gears/cav field/gear3.png',
      ];
  @override
  String get recommended_accessories =>
      'For accessories it is recommended to use ring and horn of fury';
  @override
  String get image_path =>
      'images/commander_images/commanders/nevsky/nevsky.png';
}

class alexander_the_great extends commander {
  @override
  String name(BuildContext context) {
    return 'Alexander the great';
  }

  @override
  String get blue_path => 'attack';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'infantry';
  @override
  String get image_path => 'images/commander_images/commanders/alex/alex.png';
}

class ashurbanipal extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.ashurbanipal}';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'archer';
  @override
  List get paired_commanders_field =>
      [liang(), herman(), nebu(), YSG(), henry()];
  @override
  List get paired_commanders_rally => [liang(), henry()];
  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/ashur/field tree/tree.png',
        'images/commander_images/commanders/ashur/field tree/tree1.png',
        'images/commander_images/commanders/ashur/field tree/tree2.png',
      ];
  @override
  List get field_tree_stats => [
        [10, 5, 6, 24],
        [8.5, 4, 8, 24],
        [7.5, 5, 6, 24],
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.ashur_tree_field_1,
      AppLocalizations.of(context)!.ashur_tree_field_2,
      AppLocalizations.of(context)!.ashur_tree_field_3,
    ];
  }

  @override
  List get rally_tree_paths => [
        'images/commander_images/commanders/ashur/rally tree/tree.png',
        'images/commander_images/commanders/ashur/rally tree/tree1.png',
      ];
  @override
  List get rally_tree_stats => [
        [7.5, 5, 6, 24],
        [8, 3, 6, 30],
      ];
  @override
  List general_speech_about_rally_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.ashur_tree_rally_1,
      AppLocalizations.of(context)!.ashur_tree_rally_2
    ];
  }

  @override
  List get rally_gears => [
        'images/commander_images/gears/arch rally/gear.png',
        'images/commander_images/gears/arch rally/gear1.png',
      ];
  @override
  String get image_path => 'images/commander_images/commanders/ashur/ashur.png';
}

class belisarius extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.belisarius_prime}';
  }

  @override
  String get blue_path => 'mobility';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'cavalry';
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachabouthuo}';
  }

  @override
  String get image_path =>
      'images/commander_images/commanders/beli/belisarius.png';
}

class boudica extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.boudica_prime}';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'archer';
  @override
  List get paired_commanders_field =>
      [liang(), ashurbanipal(), herman(), henry()];
  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/boudica/field tree/tree.png',
        'images/commander_images/commanders/boudica/field tree/tree1.png'
      ];
  @override
  List get field_tree_stats => [
        [10, 5, 6, 24],
        [8.5, 4, 8, 24],
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.boudica_tree_field_1,
      AppLocalizations.of(context)!.boudica_tree_field_2
    ];
  }

  @override
  String get image_path =>
      'images/commander_images/commanders/boudica/boudica.png';
}

class gorgo extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.gorgo}';
  }

  @override
  String get blue_path => 'defense';
  @override
  String get yellow_path => 'garrison';
  @override
  String get troop_type => 'infantry';
  @override
  List get paired_commanders_field => [liu_che(), WW()];
  @override
  List get paired_commanders_garrison => [liu_che(), hera()];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutgorgo}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/gorgo/field tree/tree.png',
      ];
  @override
  List get field_tree_stats => [
        [7.5, 9.5, 11.5, 24]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [AppLocalizations.of(context)!.gorgo_tree_field_1];
  }

  @override
  List get garrison_tree_paths => [
        'images/commander_images/commanders/gorgo/garrison tree/tree.png',
        'images/commander_images/commanders/gorgo/garrison tree/tree1.png',
        'images/commander_images/commanders/gorgo/garrison tree/tree2.png'
      ];
  @override
  List get garrison_tree_stats => [
        [6.5, 9, 10.5, 6],
        [6, 11, 12, 0],
        [6.5, 9, 2.5, 6]
      ];
  @override
  List general_speech_about_garrison_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.gorgo_tree_garrison_1,
      AppLocalizations.of(context)!.gorgo_tree_garrison_2,
      AppLocalizations.of(context)!.gorgo_tree_garrison_3
    ];
  }

  @override
  List get garrison_gears => [
        'images/commander_images/gears/inf garrison/gear.png',
        'images/commander_images/gears/inf garrison/gear1.png',
      ];
  @override
  String get image_path => 'images/commander_images/commanders/gorgo/gorgo.png';
}

class guan_yu extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.guan_yu}';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'infantry';
  @override
  List get paired_commanders_field => [
        scipio(),
        sargon(),
        honda(),
      ];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutguan}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/guan yu/field tree/tree.png',
        'images/commander_images/commanders/guan yu/field tree/tree1.png',
        'images/commander_images/commanders/guan yu/field tree/tree2.png',
        'images/commander_images/commanders/guan yu/field tree/tree3.png',
        'images/commander_images/commanders/guan yu/field tree/tree4.png',
        'images/commander_images/commanders/guan yu/field tree/tree5.png',
      ];
  @override
  List get field_tree_stats => [
        [6, 8, 13, 12],
        [6.5, 8, 14, 24],
        [6.5, 7, 13, 20],
        [6, 8, 13, 6],
        [4.5, 8, 14, 24],
        [6.5, 7, 13, 15]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.guan_tree_field_1,
      AppLocalizations.of(context)!.guan_tree_field_2,
      AppLocalizations.of(context)!.guan_tree_field_3,
      AppLocalizations.of(context)!.guan_tree_field_4,
      AppLocalizations.of(context)!.guan_tree_field_5,
      AppLocalizations.of(context)!.guan_tree_field_6
    ];
  }

  @override
  List get field_gears => [
        'images/commander_images/gears/inf field/gear1.png',
        'images/commander_images/gears/inf field/gear3.png',
      ];
  @override
  String get image_path =>
      'images/commander_images/commanders/guan yu/guan yu.png';
}

class hera extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.heraclius}';
  }

  @override
  String get blue_path => 'defense';
  @override
  String get yellow_path => 'garrison';
  @override
  String get troop_type => 'leadership';
  @override
  List get paired_commanders_garrison => [YSS(), lapulapu()];
  @override
  List get garrison_tree_paths => [
        'images/commander_images/commanders/hera/garrison tree/structure tree.png',
        'images/commander_images/commanders/hera/garrison tree/swarm tree.png',
        'images/commander_images/commanders/hera/garrison tree/tree city.png',
      ];
  //@override
  //List get garrison_tree_stats => [
  //      [0, 0, 0, 0],
  //      [0, 0, 0, 0],
  //      [0, 0, 0, 0]
  //    ];
  @override
  List general_speech_about_garrison_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.hera_tree_garrison_1,
      AppLocalizations.of(context)?.hera_tree_garrison_2,
      AppLocalizations.of(context)?.hera_tree_garrison_3,
    ];
  }

  @override
  String get image_path => 'images/commander_images/commanders/hera/herac.png';
}

class huo extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.huo_qubing}';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'cavalry';

  @override
  List get paired_commanders_field => [
        nevsky(),
        belisarius(),
        joan_of_arc(),
        wiliam(),
        hera(),
        mehmed(),
        honda()
      ];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachabouthuo}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/huo/field tree/tree.png',
        'images/commander_images/commanders/huo/field tree/tree1.png',
        'images/commander_images/commanders/huo/field tree/tree2.png',
      ];
  @override
  List get field_tree_stats => [
        [7, 7, 8, 18],
        [8.5, 6, 9, 24],
        [8.5, 6, 8, 24]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.huo_tree_field_1,
      AppLocalizations.of(context)!.huo_tree_field_2,
      AppLocalizations.of(context)!.huo_tree_field_3,
    ];
  }

  @override
  List get field_gears => [
        'images/commander_images/gears/cav field/gear1.png',
        'images/commander_images/gears/cav field/gear3.png'
      ];
  @override
  String get recommended_accessories =>
      'For accessories it is recommended to use ring and horn of fury';
  @override
  String get image_path =>
      'images/commander_images/commanders/huo/huo qubing.png';
}

class herman extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.herman_prime}';
  }

  @override
  String get blue_path => 'support';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'archer';
  @override
  List get paired_commanders_field => [
        liang(),
        YSG(),
        boudica(),
        tomyris(),
      ];
  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/herman/field tree/tree.png',
        'images/commander_images/commanders/herman/field tree/tree1.png'
      ];
  @override
  List get field_tree_stats => [
        [14.5, 5, 6, 27],
        [10.5, 4, 6, 27],
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.herman_tree_field_1,
      AppLocalizations.of(context)!.herman_tree_field_2
    ];
  }

  @override
  String get image_path =>
      'images/commander_images/commanders/herman/herman.png';
}

class joan_of_arc extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.joan_of_arc_prime}';
  }

  @override
  String get blue_path => 'support';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'cavalry';
  @override
  List get paired_commanders_field => [
        nevsky(),
        belisarius(),
        mehmed(),
      ];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutjoan}';
  }

  @override
  List get field_tree_paths =>
      ['images/commander_images/commanders/joan of arc/field tree/tree.png'];
  @override
  List get field_tree_stats => [
        [10.5, 7, 7, 27]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.joanarck_tree_field_1,
    ];
  }

  @override
  String get image_path =>
      'images/commander_images/commanders/joan of arc/joan of arc.png';
}

class justinian extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.justinian}';
  }

  @override
  String get blue_path => 'support';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'cavalry';
  @override
  List get paired_commanders_field =>
      [nevsky(), joan_of_arc(), wiliam(), mehmed()];
  @override
  List get paired_commanders_rally => [nevsky()];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutjustinian}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/justinian/field tree/tree.png',
        'images/commander_images/commanders/justinian/field tree/tree1.png',
        'images/commander_images/commanders/justinian/field tree/tree2.png',
      ];
  @override
  List get field_tree_stats => [
        [10.5, 7, 6, 27],
        [10.5, 7, 6, 27],
        [9.5, 7, 6, 21],
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.justinian_tree_field_1,
      AppLocalizations.of(context)!.justinian_tree_field_2,
      AppLocalizations.of(context)!.justinian_tree_field_3,
    ];
  }

  @override
  List get rally_tree_paths => [
        'images/commander_images/commanders/justinian/rally tree/tree.png',
        'images/commander_images/commanders/justinian/rally tree/tree1.png',
        'images/commander_images/commanders/justinian/rally tree/tree2.png',
      ];
  @override
  List get rally_tree_stats => [
        [10.5, 7, 6, 27],
        [9.5, 7, 6, 21],
        [11, 5.5, 5, 27],
      ];
  @override
  List general_speech_about_rally_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.justinian_tree_rally_1,
      AppLocalizations.of(context)!.justinian_tree_rally_2,
      AppLocalizations.of(context)!.justinian_tree_rally_3,
    ];
  }

  @override
  List get rally_gears => ['images/commander_images/gears/cav rally/gear.png'];
  @override
  String get image_path =>
      'images/commander_images/commanders/justinian/justinian.png';
}

class liang extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.zhuge_liang}';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'archer';
  @override
  List get paired_commanders_field => [herman(), YSG(), henry()];
  @override
  List get paired_commanders_rally => [ashurbanipal(), henry()];
  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/liang/field tree/tree.png',
        'images/commander_images/commanders/liang/field tree/tree1.png'
      ];
  @override
  List get field_tree_stats => [
        [10, 5, 6, 24],
        [8.5, 4, 8, 24],
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.liang_tree_field_1,
      AppLocalizations.of(context)!.liang_tree_field_2
    ];
  }

  @override
  List get field_gears => [
        'images/commander_images/gears/arch field/gear.png',
        'images/commander_images/gears/arch field/gear1.png'
      ];
  //@override
  //List get rally_tree_paths => [
  //      'images/commander_images/commanders/liang/rally tree/tree.png',
  //      'images/commander_images/commanders/liang/rally tree/tree1.png'
  //    ];
  //@override
  //List get rally_tree_stats => [
  //      [0, 0, 0, 0],
  //      [0, 0, 0, 0],
  //    ];

  @override
  String get recommended_accessories =>
      'For accessories it is recommended to use ring and horn of fury';
  @override
  String get image_path => 'images/commander_images/commanders/liang/liang.png';
}

class liu_che extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.liu_che}';
  }

  @override
  String get blue_path => 'attack';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'infantry';
  @override
  List get paired_commanders_field => [alexander_the_great(), WW(), sargon()];
  @override
  List get paired_commanders_rally => [tariq(), aemilianus()];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutliuche}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/liu che/field tree/tree.png',
        'images/commander_images/commanders/liu che/field tree/tree1.png',
      ];
  @override
  List get field_tree_stats => [
        [7, 8, 11.5, 24],
        [11.5, 9, 12.5, 24]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.liuche_tree_field_1,
      AppLocalizations.of(context)?.liuche_tree_field_2
    ];
  }

  @override
  List get rally_tree_paths => [
        'images/commander_images/commanders/liu che/rally tree/tree.png',
      ];
  @override
  List get rally_tree_stats => [
        [7, 8, 11.5, 24]
      ];
  @override
  List general_speech_about_rally_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.liuche_tree_field_1,
    ];
  }

  @override
  List get field_gears => [
        'images/commander_images/gears/inf field/gear1.png',
        'images/commander_images/gears/inf field/gear2.png',
        'images/commander_images/gears/inf field/gear3.png',
        'images/commander_images/gears/inf field/gear4.png',
      ];
  @override
  String get recommended_accessories =>
      'For accessories it is recommended to use ring and horn of fury or the greatest glory';
  @override
  String get image_path =>
      'images/commander_images/commanders/liu che/liu-che.png';
}

class nebu extends commander {
  @override
  String name(BuildContext context) {
    return 'Nebuchadnezzar II';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'archer';
  @override
  List get paired_commanders_field => [henry()];
  @override
  String get image_path => 'images/commander_images/commanders/nebu/nebu.png';
}

class pakal extends commander {
  @override
  String name(BuildContext context) {
    return 'K’inich Janaab’Pakal';
  }

  @override
  String get blue_path => 'defense';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'infantry';
  @override
  String get image_path => 'images/commander_images/commanders/pakal/pakal.png';
}

class sargon extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.sargon_the_great}';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'infantry';
  @override
  List get paired_commanders_field => [
        scipio(),
        liu_che(),
        tariq(),
      ];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutsargon}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/sargon/field tree/tree.png',
        'images/commander_images/commanders/sargon/field tree/tree1.png',
        'images/commander_images/commanders/sargon/field tree/tree2.png',
        'images/commander_images/commanders/sargon/field tree/tree3.png',
      ];
  @override
  List get field_tree_stats => [
        [6, 8, 13, 12],
        [6.5, 8, 14, 24],
        [6, 8, 13, 6],
        [4.5, 8, 14, 24]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.sargon_tree_field_1,
      AppLocalizations.of(context)?.sargon_tree_field_2,
      AppLocalizations.of(context)?.sargon_tree_field_3,
      AppLocalizations.of(context)?.sargon_tree_field_4,
    ];
  }

  @override
  String get image_path =>
      'images/commander_images/commanders/sargon/sargon.png';
}

class aemilianus extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.scipio_aemilianus}';
  }

  @override
  String get blue_path => 'smite';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'infantry';
  @override
  List get paired_commanders_rally => [tariq(), liu_che()];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutaemilianus}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/aemilianus/field tree/tree.png',
        'images/commander_images/commanders/aemilianus/field tree/tree1.png',
        'images/commander_images/commanders/aemilianus/field tree/tree2.png'
      ];
  @override
  List get field_tree_stats => [
        [6.5, 8.5, 12, 18],
        [6.5, 8.5, 12, 6],
        [6.5, 6.5, 10, 24]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.ameilianus_tree_field_1,
      AppLocalizations.of(context)?.ameilianus_tree_field_2,
      AppLocalizations.of(context)?.ameilianus_tree_field_3,
    ];
  }

  @override
  List get rally_tree_paths => [
        'images/commander_images/commanders/aemilianus/rally tree/tree.png',
      ];
  @override
  List get rally_tree_stats => [
        [6.5, 8.5, 12, 6]
      ];
  @override
  List general_speech_about_rally_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.ameilianus_tree_rally_1,
    ];
  }

  @override
  String get image_path =>
      'images/commander_images/commanders/aemilianus/scipio aemilianus.png';
}

class scipio extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.scipio_africanus_prime}';
  }

  @override
  String get blue_path => 'support';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'infantry';
  @override
  List get paired_commanders_field => [
        liu_che(),
        WW(),
        tariq(),
        mehmed(),
        sargon(),
      ];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutscipio}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/scipio/field tree/tree.png',
      ];
  @override
  List get field_tree_stats => [
        [6.5, 8, 12, 27]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.scipio_tree_field_1,
    ];
  }

  @override
  String get recommended_accessories =>
      'For accessories it is recommended to use ring and horn of fury';
  @override
  String get image_path =>
      'images/commander_images/commanders/scipio/scipio.png';
}

class tariq extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.tariq_ibn_ziad}';
  }

  @override
  String get blue_path => 'defense';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'infantry';
  @override
  List get paired_commanders_field => [
        liu_che(),
        sargon(),
      ];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachabouttariq}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/tariq/field tree/tree.png',
      ];
  @override
  List get field_tree_stats => [
        [7.5, 9.5, 10, 20]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.tariq_tree_field_1,
    ];
  }

  @override
  List get rally_tree_paths => [
        'images/commander_images/commanders/tariq/rally tree/tree.png',
        'images/commander_images/commanders/tariq/rally tree/tree1.png',
        'images/commander_images/commanders/tariq/rally tree/tree2.png',
      ];
  @override
  List get rally_tree_stats => [
        [8.5, 9.5, 11.5, 6],
        [8.5, 9.5, 11.5, 6],
        [9, 8, 11, 6]
      ];
  @override
  List general_speech_about_rally_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.tariq_tree_rally_1,
      AppLocalizations.of(context)?.tariq_tree_rally_2,
      AppLocalizations.of(context)?.tariq_tree_rally_3,
    ];
  }

  @override
  List get paired_commanders_rally => [pakal(), liu_che(), aemilianus()];
  @override
  List get rally_gears => [
        'images/commander_images/gears/inf rally/gear.png',
        'images/commander_images/gears/inf rally/gear1.png',
      ];

  @override
  String get image_path => 'images/commander_images/commanders/tariq/tariq.png';
}

class henry extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.henry_v}';
  }

  @override
  String get blue_path => 'support';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'archer';
  @override
  List get paired_commanders_field => [ashurbanipal()];
  @override
  List get paired_commanders_rally => [ashurbanipal(), nebu(), liang()];
  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/henry/field tree/tree.png',
        'images/commander_images/commanders/henry/field tree/tree1.png',
      ];
  List get field_tree_stats => [
        [10.5, 4, 6, 27],
        [12.5, 3.5, 5, 27],
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.henry_tree_field_1,
      AppLocalizations.of(context)!.henry_tree_field_2,
    ];
  }

  @override
  List get rally_tree_paths => [
        'images/commander_images/commanders/henry/rally tree/tree.png',
        'images/commander_images/commanders/henry/rally tree/tree1.png',
      ];
  List get rally_tree_stats => [
        [12.5, 3.5, 5, 27],
        [14, 1, 5, 33],
      ];
  @override
  List general_speech_about_rally_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.henry_tree_rally_1,
      AppLocalizations.of(context)!.henry_tree_rally_2,
    ];
  }

  @override
  List get rally_gears => [
        'images/commander_images/gears/arch rally/gear.png',
        'images/commander_images/gears/arch rally/gear1.png',
      ];

  @override
  String get image_path => 'images/commander_images/commanders/henry/henry.png';
}

class WW extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.wiliam_walace}';
  }

  @override
  String get blue_path => 'smite';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'infantry';
  List get paired_commanders_field => [
        liu_che(),
        gorgo(),
      ];
  List get paired_commanders_rally => [
        liu_che(),
      ];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutwallace}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/WW/field tree/tree.png',
        'images/commander_images/commanders/WW/field tree/tree1.png',
        'images/commander_images/commanders/WW/field tree/tree2.png'
      ];
  List get field_tree_stats => [
        [6.5, 8.5, 12, 18],
        [6.5, 8.5, 12, 6],
        [6.5, 6.5, 10, 24]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.wallace_tree_field_1,
      AppLocalizations.of(context)?.wallace_tree_field_2,
      AppLocalizations.of(context)?.wallace_tree_field_3,
    ];
  }

  @override
  List get rally_tree_paths => [
        'images/commander_images/commanders/WW/rally tree/tree.png',
      ];
  List get rally_tree_stats => [
        [6.5, 8.5, 12, 6]
      ];
  @override
  List general_speech_about_rally_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.wallace_tree_rally_1,
    ];
  }

  @override
  List get field_gears => [
        'images/commander_images/gears/inf field/gear.png',
        'images/commander_images/gears/inf field/gear3.png'
      ];
  @override
  String get image_path => 'images/commander_images/commanders/WW/WW.png';
}

class xiang_yu extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.xiang_yu}';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'cavalry';
  @override
  List get paired_commanders_field =>
      [nevsky(), wiliam(), mehmed(), honda(), hera(), belisarius()];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutxy}';
  }

  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/XY/field tree/tree.png',
        'images/commander_images/commanders/XY/field tree/tree1.png',
        'images/commander_images/commanders/XY/field tree/tree2.png'
      ];
  @override
  List get field_tree_stats => [
        [7, 7, 8, 18],
        [8.5, 6, 9, 24],
        [7.5, 7.5, 8, 18]
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)?.xy_tree_field_1,
      AppLocalizations.of(context)?.xy_tree_field_2,
      AppLocalizations.of(context)?.xy_tree_field_3,
    ];
  }

  @override
  List get field_gears => [
        'images/commander_images/gears/cav field/gear1.png',
        'images/commander_images/gears/cav field/gear3.png'
      ];
  @override
  String get image_path => 'images/commander_images/commanders/XY/xiang yu.png';
}

class YSG extends commander {
  @override
  String name(BuildContext context) {
    return 'YSG';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'garrison';
  @override
  String get troop_type => 'archer';
  @override
  String get image_path => 'images/commander_images/commanders/YSG/ysg.png';
}

class mina extends commander {
  @override
  String name(BuildContext context) {
    return 'Minamoto';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'peacekeeping';
  @override
  String get troop_type => 'cavalry';
  @override
  String get image_path => 'images/commander_images/commanders/mina/mina.png';
}

class honda extends commander {
  @override
  String name(BuildContext context) {
    return 'Honda Tadakatsu';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'leadership';
  @override
  String get image_path => 'images/commander_images/commanders/honda/honda.png';
}

class mehmed extends commander {
  @override
  String name(BuildContext context) {
    return 'mehmed II';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'leadership';
  @override
  List get paired_commanders_field => [];
  @override
  String get image_path =>
      'images/commander_images/commanders/mehmed/mehmed.png';
}

class wiliam extends commander {
  @override
  String name(BuildContext context) {
    return 'Wiliam I';
  }

  @override
  String get blue_path => 'attack';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'cavalry';
  @override
  String get image_path =>
      'images/commander_images/commanders/wiliam/wiliam.png';
}

class tomyris extends commander {
  @override
  String name(BuildContext context) {
    return 'Tomyris';
  }

  @override
  String get blue_path => 'attack';
  @override
  String get yellow_path => 'conquering';
  @override
  String get troop_type => 'archer';
  @override
  String get image_path =>
      'images/commander_images/commanders/tomyris/tomyris.png';
}

class zizka extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.jan_zizka}';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'garrison';
  @override
  String get troop_type => 'cavalry';
  @override
  List get paired_commanders_garrison => [hera(), eleanor()];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutzizka}';
  }

  @override
  List get garrison_tree_paths => [
        'images/commander_images/commanders/zizka/garrison tree/tree.png',
        'images/commander_images/commanders/zizka/garrison tree/tree1.png',
      ];
  @override
  List get garrison_tree_stats => [
        [6.5, 6.5, 8.5, 18],
        [8, 6.5, 9, 9]
      ];
  @override
  List general_speech_about_garrison_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.zizka_tree_garrison_1,
      AppLocalizations.of(context)!.zizka_tree_garrison_2,
    ];
  }

  @override
  List get garrison_gears => [
        'images/commander_images/gears/cav garrison/gear.png',
        'images/commander_images/gears/cav garrison/gear1.png',
      ];
  @override
  String get image_path => 'images/commander_images/commanders/zizka/zizka.png';
}

class eleanor extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.eleanor}';
  }

  @override
  String get blue_path => 'defense';
  @override
  String get yellow_path => 'garrison';
  @override
  String get troop_type => 'cavalry';
  @override
  List get paired_commanders_garrison => [hera(), zizka()];
  @override
  String general_speech_about_the_commander(BuildContext context) {
    return '${AppLocalizations.of(context)?.generalspeachaboutelanor}';
  }

  @override
  List get garrison_tree_paths => [
        'images/commander_images/commanders/eleanor/garrison tree/tree.png',
        'images/commander_images/commanders/eleanor/garrison tree/tree1.png',
        'images/commander_images/commanders/eleanor/garrison tree/tree2.png',
      ];
  @override
  List garrison_tree_stats = [
    [9.5, 6.5, 6, 12],
    [7.5, 8.5, 5.5, 18],
    [8, 6, 8, 9]
  ];
  @override
  List general_speech_about_garrison_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.elanor_tree_garrison_1,
      AppLocalizations.of(context)!.elanor_tree_garrison_2,
      AppLocalizations.of(context)!.elanor_tree_garrison_3,
    ];
  }

  @override
  List get garrison_gears => [
        'images/commander_images/gears/cav garrison/gear.png',
        'images/commander_images/gears/cav garrison/gear1.png',
      ];
  @override
  String get image_path =>
      'images/commander_images/commanders/eleanor/eleanor.png';
}

class dido extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.dido}';
  }

  @override
  String get blue_path => 'support';
  @override
  String get yellow_path => 'garrison';
  @override
  String get troop_type => 'archer';
  @override
  List get paired_commanders_garrison => [hera(), yeong(), liang()];
  @override
  List get garrison_tree_paths => [
        'images/commander_images/commanders/dido/garrison tree/tree.png',
        'images/commander_images/commanders/dido/garrison tree/tree1.png'
      ];
  @override
  List get garrison_tree_stats => [
        [8.5, 5.5, 4.5, 27],
        [12.5, 5, 4, 27]
      ];
  @override
  List general_speech_about_garrison_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.dido_tree_garrison_1,
      AppLocalizations.of(context)!.dido_tree_garrison_2,
    ];
  }

  @override
  String get image_path => 'images/commander_images/commanders/dido/dido.png';
}

class YSS extends commander {
  @override
  String name(BuildContext context) {
    return 'YSS';
  }

  @override
  String get blue_path => 'defense';
  @override
  String get yellow_path => 'garrison';
  @override
  String get troop_type => 'leadersghip';
  @override
  List get paired_commanders_garrison => [hera(), lapulapu()];
  @override
  String get image_path => 'images/commander_images/commanders/YSS/YSS.png';
}

class lapulapu extends commander {
  @override
  String name(BuildContext context) {
    return 'LapuLapu';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'garrison';
  @override
  String get troop_type => 'leadersghip';
  @override
  List get paired_commanders_garrison => [hera(), YSS()];
  @override
  String get image_path =>
      'images/commander_images/commanders/lapulapu/lapulapu.png';
}

class shajar extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.shajar}';
  }

  @override
  String get blue_path => 'skill';
  @override
  String get yellow_path => 'versatility';
  @override
  String get troop_type => 'archer';
  @override
  List get paired_commanders_garrison => [liang(), ashurbanipal(), YSG()];
  @override
  List get field_tree_paths => [
        'images/commander_images/commanders/shajar/field tree/tree.png',
        'images/commander_images/commanders/shajar/field tree/tree1.png',
      ];
  @override
  List get field_tree_stats => [
        [10, 5, 6, 24],
        [8.5, 4, 8, 24],
      ];
  @override
  List general_speech_about_field_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.shajar_tree_field_1,
      AppLocalizations.of(context)!.shajar_tree_field_2,
    ];
  }

  @override
  List get field_gears => [
        'images/commander_images/gears/arch field/gear.png',
        'images/commander_images/gears/arch field/gear1.png',
      ];
  @override
  String get image_path =>
      'images/commander_images/commanders/shajar/shajar2.png';
}

class yeong extends commander {
  @override
  String name(BuildContext context) {
    return '${AppLocalizations.of(context)?.yeong}';
  }

  @override
  String get blue_path => 'defense';
  @override
  String get yellow_path => 'garrison';
  @override
  String get troop_type => 'archer';
  @override
  List get paired_commanders_garrison => [hera(), dido()];
  @override
  List get garrison_tree_paths => [
        'images/commander_images/commanders/yeong/garrison tree/tree.png',
        'images/commander_images/commanders/yeong/garrison tree/tree1.png',
        'images/commander_images/commanders/yeong/garrison tree/tree2.png',
        'images/commander_images/commanders/yeong/garrison tree/tree3.png',
        'images/commander_images/commanders/yeong/garrison tree/tree4.png',
      ];
  @override
  List get garrison_tree_stats => [
        [10.5, 4.5, 5.5, 18],
        [7, 5, 5, 12],
        [11.5, 6, 4.5, 6],
        [5.5, 8, 4, 24],
        [6.5, 7, 5.5, 12],
      ];
  @override
  List general_speech_about_garrison_tree(BuildContext context) {
    return [
      AppLocalizations.of(context)!.yeong_tree_garrison_1,
      AppLocalizations.of(context)!.yeong_tree_garrison_2,
      AppLocalizations.of(context)!.yeong_tree_garrison_3,
      AppLocalizations.of(context)!.yeong_tree_garrison_4,
      AppLocalizations.of(context)!.yeong_tree_garrison_5,
    ];
  }

  @override
  List get garrison_gears => [
        'images/commander_images/gears/arch garrison/gear.png',
        'images/commander_images/gears/arch garrison/gear1.png',
      ];
  @override
  String get image_path => 'images/commander_images/commanders/yeong/yeong.png';
}
