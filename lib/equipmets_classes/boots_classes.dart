// ignore_for_file: camel_case_types, non_constant_identifier_names

class boots {
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
  String rank = '';
  String image_path = '';
  String equipment_name = '';
}

class commanders_boots extends boots {
  @override
  double get archer_attack => 8;
  @override
  double get archer_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/boots/commander\'s boots.png';
  @override
  String get equipment_name => 'commander\'s boots';
}

class shios_return extends boots {
  @override
  double get infantry_defense => 8;
  @override
  double get archer_health => 5;
  @override
  double get infantry_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/boots/shio\'s return.png';
  @override
  String get equipment_name => 'shio\'s return';
}

class mountain_crushers extends boots {
  @override
  double get cavalry_attack => 8;
  @override
  double get archer_attack => 5;
  @override
  double get cavalry_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/boots/mountain crushers.png';
  @override
  String get equipment_name => 'mountain crushers';
}

class greaves_of_the_glorious_goddess extends boots {
  @override
  double get troop_health => 6;
  @override
  double get troop_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/boots/greaves of the glorious goddess.png';
  @override
  String get equipment_name => 'greaves of the glorious goddess';
}

class sturdy_boots_of_the_eternal_empire extends boots {
  @override
  double get infantry_defense => 7.5;
  @override
  double get cavalry_defense => 3;
  @override
  double get infantry_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/boots/sturdy boots of the eternal empire.png';
  @override
  String get equipment_name => 'sturdy boots of the eternal empire';
}

class boots_of_the_hellish_wasteland extends boots {
  @override
  double get cavalry_health => 7.5;
  @override
  double get archer_attack => 3;
  @override
  double get cavalry_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/boots/boots of the hellish wasteland.png';
  @override
  String get equipment_name => 'boots of the hellish wasteland';
}

class dragons_breath_boots extends boots {
  @override
  double get archer_defense => 7.5;
  @override
  double get infantry_defense => 3;
  @override
  double get archer_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/boots/dragon\'s breath boots.png';
  @override
  String get equipment_name => 'dragon\'s breath boots';
}

class roaring_wolfs_claws extends boots {
  @override
  double get siege_defense => 10;
  @override
  double get siege_base_defense => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/boots/roaring wolf\'s claws.png';
  @override
  String get equipment_name => 'roaring wolf\'s claws';
}

class flame_treads extends boots {
  @override
  double get archer_health => 5.5;
  @override
  double get cavalry_attack => 3;
  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/boots/flame treads.png';
  @override
  String get equipment_name => 'flame treads';
}

class frost_treads extends boots {
  @override
  double get infantry_defense => 5.5;
  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/boots/frost treads.png';
  @override
  String get equipment_name => 'frost treads';
}

class cloud_racers extends boots {
  @override
  double get cavalry_attack => 5.5;
  @override
  double get archer_health => 2;
  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/boots/cloud racers.png';
  @override
  String get equipment_name => 'cloud racers';
}

class knights_winter_sabatons extends boots {
  @override
  double get siege_health => 5.5;
  @override
  String get rank => "epic";
  @override
  String get image_path =>
      'images/equipments/boots/knight\'s winter sabatons.png';
  @override
  String get equipment_name => 'knight\'s winter sabatons';
}

class the_scarlet_hounds extends boots {
  @override
  double get infantry_health => 4;
  @override
  String get rank => "elite";
  @override
  String get image_path => 'images/equipments/boots/the scarlet hounds.png';
  @override
  String get equipment_name => 'the scarlet hounds';
}

class windswept_boots extends boots {
  @override
  double get cavalry_health => 2.5;
  @override
  double get infantry_defense => 2.5;
  @override
  String get rank => "elite";
  @override
  String get image_path => 'images/equipments/boots/windswept boots.png';
  @override
  String get equipment_name => 'windswept boots';
}

class edged_boots extends boots {
  @override
  double get archer_attack => 2.5;
  @override
  double get cavalry_attack => 1;
  @override
  String get rank => "advanced";
  @override
  String get image_path => 'images/equipments/boots/edged boots.png';
  @override
  String get equipment_name => 'edged boots';
}

class boots_of_reverence extends boots {
  @override
  double get infantry_attack => 2.5;
  @override
  double get archer_defense => 1;
  @override
  String get rank => "advanced";
  @override
  String get image_path => 'images/equipments/boots/boots of reverence.png';
  @override
  String get equipment_name => 'boots of reverence';
}
