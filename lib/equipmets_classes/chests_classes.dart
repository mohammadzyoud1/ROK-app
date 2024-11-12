// ignore_for_file: camel_case_types, non_constant_identifier_names

class chests {
  double infantry_attack = 0;
  double infantry_defense = 0;
  double infantry_health = 0;

  double cavalry_attack = 0;
  double cavalry_defense = 0;
  double cavalry_health = 0;

  double archer_attack = 0;
  double archer_defense = 0;
  double archer_health = 0;

  double siege_attack = 0;
  double siege_defense = 0;
  double siege_health = 0;

  double troop_attack = 0;
  double troop_defense = 0;
  double troop_health = 0;

  double infantry_base_attack = 0;
  double infantry_base_defense = 0;
  double infantry_base_health = 0;

  double cavalry_base_attack = 0;
  double cavalry_base_defense = 0;
  double cavalry_base_health = 0;

  double archer_base_attack = 0;
  double archer_base_defense = 0;
  double archer_base_health = 0;

  double siege_base_attack = 0;
  double siege_base_defense = 0;
  double siege_base_health = 0;

  double troop_base_attack = 0;
  double troop_base_defense = 0;
  double troop_base_health = 0;

  String rank = "";
  String image_path = '';
  String equipment_name = '';
}

class the_milky_way extends chests {
  @override
  double get cavalry_health => 6;

  @override
  double get archer_health => 12;
  @override
  double get archer_base_defense => 3;

  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/chests/the milky way.png';
  @override
  String get equipment_name => 'the milky way';
}

class hope_cloak extends chests {
  @override
  double get infantry_defense => 12;

  @override
  double get cavalry_defense => 5;

  @override
  double get archer_defense => 5;
  @override
  double get infantry_base_defense => 3;

  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/chests/hope cloak.png';
  @override
  String get equipment_name => 'hope cloak';
}

class shadow_legions_retribution extends chests {
  @override
  double get infantry_attack => 5;

  @override
  double get cavalry_attack => 12;

  @override
  double get archer_attack => 5;

  @override
  double get cavalry_base_defense => 3;

  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/chests/shadow legion\'s retribution.png';
  @override
  String get equipment_name => 'shadow legion\'s retribution';
}

class plate_of_the_eternal_empire extends chests {
  @override
  double get infantry_attack => 11;

  @override
  double get archer_defense => 5;
  @override
  double get infantry_base_defense => 3;

  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/chests/plate of the eternal empire.png';
  @override
  String get equipment_name => 'plate of the eternal empire';
}

class heavy_armor_of_the_hellish_wasteland extends chests {
  @override
  double get infantry_attack => 5;
  @override
  double get cavalry_health => 11;
  @override
  double get cavalry_base_defense => 3;

  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/chests/heavy armor of the hellish wasteland.png';
  @override
  String get equipment_name => 'heavy armor of the hellish wasteland';
}

class dragons_breath_plate extends chests {
  @override
  double get cavalry_defense => 5;

  @override
  double get archer_health => 11;
  @override
  double get archer_base_defense => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/chests/dragon\'s breath plate.png';
  @override
  String get equipment_name => 'dragon\'s breath plate';
}

class vigilant_wolfs_leather_armor extends chests {
  @override
  double get siege_attack => 14.5;
  @override
  double get siege_base_attack => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/chests/vigilant wolf\'s leather armor.png';
  @override
  String get equipment_name => 'vigilant wolf\'s leather armor';
}

class plate_of_the_gloriousgoddess extends chests {
  @override
  double get troop_defense => 8;
  @override
  double get troop_base_defense => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/chests/plate of the gloriousgoddess.png';
  @override
  String get equipment_name => 'plate of the gloriousgoddess';
}

class revival_palte extends chests {
  @override
  double get cavalry_defense => 5;

  @override
  double get archer_attack => 7.5;

  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/chests/revival palte.png';
  @override
  String get equipment_name => 'revival palte';
}

class darks_lords_blessing extends chests {
  @override
  double get cavalry_defense => 8;

  @override
  double get archer_attack => 5;

  @override
  String get rank => "epic";
  @override
  String get image_path =>
      'images/equipments/chests/darks lord\'s blessing.png';
  @override
  String get equipment_name => 'darks lord\'s blessing';
}

class quinns_soul extends chests {
  @override
  double get infantry_attack => 8;

  @override
  double get archer_health => 4;

  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/chests/quinn\'s soul.png';

  @override
  String get equipment_name => 'quinn\'s soul';
}

class knights_valorous_cloak extends chests {
  @override
  double get siege_attack => 8;

  @override
  String get rank => "epic";
  @override
  String get image_path =>
      'images/equipments/chests/knight\'s valorous cloak.png';
  @override
  String get equipment_name => 'knight\'s valorous cloak';
}

class windswpet_breastplate extends chests {
  @override
  double get infantry_defense => 4.5;

  @override
  double get cavalry_defense => 4.5;

  @override
  String get rank => "elite";
  @override
  String get image_path => 'images/equipments/chests/windswpet breastplate.png';
  @override
  String get equipment_name => 'windswpet breastplate';
}

class commanders_heavy_armor extends chests {
  @override
  double get infantry_attack => 3;

  @override
  double get archer_health => 6;

  @override
  String get rank => "elite";
  @override
  String get image_path =>
      'images/equipments/chests/commander\'s heavy armor.png';
  @override
  String get equipment_name => 'commander\'s heavy armor';
}

class infantry_breastplate extends chests {
  @override
  double get infantry_defense => 4;

  @override
  double get cavalry_health => 2;

  @override
  String get rank => "advanced";
  @override
  String get image_path => 'images/equipments/chests/infantry breastplate.png';
  @override
  String get equipment_name => 'infantry breastplate';
}

class milanese_plate extends chests {
  @override
  double get cavalry_defense => 4;

  @override
  double get archer_attack => 2;

  @override
  String get rank => "advanced";
  @override
  String get image_path => 'images/equipments/chests/milanese plate.png';
  @override
  String get equipment_name => 'milanese plate';
}
