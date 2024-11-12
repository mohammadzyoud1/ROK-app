// ignore_for_file: non_constant_identifier_names, camel_case_types

class legs {
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

class eternal_night extends legs {
  @override
  double get infantry_defense => 12;
  @override
  double get cavalry_defense => 5;
  @override
  double get archer_defense => 5;
  @override
  double get infantry_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/legs/eternal night.png';
  @override
  String get equipment_name => 'eternal night';
}

class tassets_of_the_war_god extends legs {
  @override
  double get archer_attack => 12;
  @override
  double get cavalry_attack => 5;
  @override
  double get infantry_attack => 5;
  @override
  double get archer_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/legs/tassets of the war god.png';
  @override
  String get equipment_name => 'tassets of the war god';
}

class ash_of_the_dawn extends legs {
  @override
  double get cavalry_health => 12;
  @override
  double get infantry_health => 5;
  @override
  double get cavalry_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/legs/ash of the dawn.png';
  @override
  String get equipment_name => 'ash of the dawn';
}

class greaves_of_the_eternal_empire extends legs {
  @override
  double get infantry_attack => 11;
  @override
  double get archer_defense => 5;
  @override
  double get infantry_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/legs/greaves of the eternal empire.png';
  @override
  String get equipment_name => 'greaves of the eternal empire';
}

class tassets_of_the_hellish_wasteland extends legs {
  @override
  double get cavalry_attack => 11;
  @override
  double get infantry_defense => 5;
  @override
  double get cavalry_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/legs/tassets of the hellish wasteland.png';
  @override
  String get equipment_name => 'tassets of the hellish wasteland';
}

class dragons_breath_tassets extends legs {
  @override
  double get archer_attack => 11;
  @override
  double get cavalry_attack => 5;
  @override
  double get archer_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/legs/dragon\'s breath tassets.png';
  @override
  String get equipment_name => 'dragon\'s breath tassets';
}

class lone_wolfs_leather_tassets extends legs {
  @override
  double get siege_health => 14.5;
  @override
  double get siege_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/legs/lone wolf\'s leather tassets.png';
  @override
  String get equipment_name => 'lone wolf\'s leather tassets';
}

class chausses_of_the_gloirous_goddess extends legs {
  @override
  double get troop_health => 8;
  @override
  double get troop_base_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/legs/chausses of the gloirous goddess.png';
  @override
  String get equipment_name => 'chausses of the gloirous goddess';
}

class revival_greaves extends legs {
  @override
  double get archer_defense => 7.5;
  @override
  double get cavalry_attack => 5;
  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/legs/revival greaves.png';
  @override
  String get equipment_name => 'revival greaves';
}

class fanatics_tassets extends legs {
  @override
  double get archer_defense => 8;
  @override
  double get cavalry_defense => 5;
  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/legs/fanatic\'s tassets.png';
  @override
  String get equipment_name => 'fanatic\'s tassets';
}

class karuaks_humility extends legs {
  @override
  double get infantry_health => 8;
  @override
  double get cavalry_attack => 5;
  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/legs/karuak\'s humility.png';
  @override
  String get equipment_name => 'karuak\'s humility';
}

class gladiator extends legs {
  @override
  double get cavalry_health => 8;
  @override
  double get archer_defense => 4;
  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/legs/gladiator.png';
  @override
  String get equipment_name => 'gladiator';
}

class knights_triumphant_tassets extends legs {
  @override
  double get siege_defense => 8;
  @override
  String get rank => "epic";
  @override
  String get image_path =>
      'images/equipments/legs/knight\'s triumphant tassets.png';
  @override
  String get equipment_name => 'knight\'s triumphant tassets';
}

class greaves_of_the_exile extends legs {
  @override
  double get archer_defense => 6;
  @override
  double get infantry_defense => 3;
  @override
  String get rank => "elite";
  @override
  String get image_path => 'images/equipments/legs/greaves of the exile.png';
  @override
  String get equipment_name => 'greaves of the exile';
}

class sentry_breeches extends legs {
  @override
  double get infantry_attack => 8;
  @override
  double get archer_attack => 3;
  @override
  double get cavalry_defense => 1;
  @override
  String get rank => "elite";
  @override
  String get image_path => 'images/equipments/legs/sentry breeches.png';
  @override
  String get equipment_name => 'sentry breeches';
}

class vanguard_greaves extends legs {
  @override
  double get cavalry_attack => 4;
  @override
  double get cavalry_health => 1;
  @override
  String get rank => "advanced";
  @override
  String get image_path => 'images/equipments/legs/vanguard greaves.png';
  @override
  String get equipment_name => 'vanguard greaves';
}

class ranger_trousers extends legs {
  @override
  double get infantry_attack => 4;
  @override
  double get archer_defense => 2;
  @override
  String get rank => "advanced";
  @override
  String get image_path => 'images/equipments/legs/ranger trousers.png';
  @override
  String get equipment_name => 'ranger trousers';
}
