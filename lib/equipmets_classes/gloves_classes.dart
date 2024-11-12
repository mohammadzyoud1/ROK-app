// ignore_for_file: camel_case_types, non_constant_identifier_names

class gloves {
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

class ians_choice extends gloves {
  @override
  double get archer_attack => 8;
  @override
  double get archer_base_attack => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/gloves/ian\'s choice.png';
  @override
  String get equipment_name => 'ian\'s choice';
}

class sacred_grips extends gloves {
  @override
  double get infantry_defense => 8;

  @override
  double get archer_attack => 5;
  @override
  double get infantry_base_attack => 3;

  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/gloves/sacred grips.png';
  @override
  String get equipment_name => 'sacred grips';
}

class navars_control extends gloves {
  @override
  double get infantry_defense => 5;

  @override
  double get cavalry_health => 8;
  @override
  double get cavalry_base_attack => 3;

  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/gloves/navar\'s control.png';
  @override
  String get equipment_name => 'navar\'s control';
}

class vambraces_of_the_eternal_empire extends gloves {
  @override
  double get infantry_defense => 7.5;

  @override
  double get cavalry_attack => 3;
  @override
  double get infantry_base_attack => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/gloves/vambraces of the eternal empire.png';
  @override
  String get equipment_name => 'vambraces of the eternal empire';
}

class armband_of_the_hellish_wasteland extends gloves {
  @override
  double get cavalry_defense => 7.5;
  @override
  double get cavalry_base_attack => 3;
  @override
  double get archer_health => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/gloves/armband of the hellish wasteland.png';
  @override
  String get equipment_name => 'armband of the hellish wasteland';
}

class dragons_breath_vambraces extends gloves {
  @override
  double get infantry_attack => 3;

  @override
  double get archer_attack => 7.5;
  @override
  double get archer_base_attack => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/gloves/dragon\'s breath vambraces.png';
  @override
  String get equipment_name => 'dragon\'s breath vambraces';
}

class wailing_wolfs_guantlets extends gloves {
  @override
  double get siege_defense => 10;
  @override
  double get siege_base_defense => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/gloves/wailing wolf\'s guantlets.png';
  @override
  String get equipment_name => 'wailing wolf\'s guantlets';
}

class guantlets_of_the_glorious_goddess extends gloves {
  @override
  double get troop_defense => 6;
  @override
  double get troop_base_defense => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/gloves/guantlets of the glorious goddess.png';
  @override
  String get equipment_name => 'guantlets of the glorious goddess';
}

class revival_gunatlets extends gloves {
  @override
  double get infantry_attack => 3;

  @override
  double get cavalry_attack => 3;
  @override
  double get archer_attack => 4.5;
  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/gloves/revival gunatlets.png';

  @override
  String get equipment_name => 'revival gunatlets';
}

class isets_sufferance extends gloves {
  @override
  double get cavalry_attack => 3;

  @override
  double get cavalry_health => 3;
  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/gloves/iset\'s sufferance.png';
  @override
  String get equipment_name => 'iset\'s sufferance';
}

class seths_brutality extends gloves {
  @override
  double get infantry_defense => 5.5;

  @override
  double get archer_defense => 2;
  @override
  String get rank => "epic";
  @override
  String get image_path => 'images/equipments/gloves/seth\'s brutality.png';
  @override
  String get equipment_name => 'seth\'s brutality';
}

class knights_battleworn_guantlets extends gloves {
  @override
  double get siege_defense => 5.5;
  @override
  String get rank => "epic";
  @override
  String get image_path =>
      'images/equipments/gloves/knight\'s battleworn guantlets.png';
  @override
  String get equipment_name => 'knight\'s battleworn guantlets';
}

class windswept_bracers extends gloves {
  @override
  double get infantry_health => 2.5;

  @override
  double get cavalry_health => 2.5;
  @override
  String get rank => "elite";
  @override
  String get image_path => 'images/equipments/gloves/windswept bracers.png';
  @override
  String get equipment_name => 'windswept bracers';
}

class saints_song extends gloves {
  @override
  double get cavalry_attack => 2;

  @override
  double get archer_attack => 4;
  @override
  String get rank => "elite";
  @override
  String get image_path => 'images/equipments/gloves/saint\'s song.png';
  @override
  String get equipment_name => 'saint\'s song';
}

class calvins_hand extends gloves {
  @override
  double get infantry_attack => 4;

  @override
  double get infantry_health => 1;

  @override
  double get archer_attack => 1;
  @override
  String get rank => "elite";
  @override
  String get image_path => 'images/equipments/gloves/calvin\'s hand.png';
  @override
  String get equipment_name => 'calvin\'s hand';
}

class leather_gloves extends gloves {
  @override
  double get infantry_defense => 1;

  @override
  double get archer_health => 2.5;
  @override
  String get rank => "advanced";
  @override
  String get image_path => 'images/equipments/gloves/leather gloves.png';
  @override
  String get equipment_name => 'leather gloves';
}

class bronze_bracers extends gloves {
  @override
  double get infantry_health => 1;

  @override
  double get cavalry_defense => 2.5;
  @override
  String get rank => "advanced";
  @override
  String get image_path => 'images/equipments/gloves/bronze bracers.png';
  @override
  String get equipment_name => 'bronze bracers';
}
