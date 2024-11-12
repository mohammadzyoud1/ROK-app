// ignore_for_file: camel_case_types, non_constant_identifier_names

class weapons {
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

class dragons_breath_bow extends weapons {
  @override
  double get archer_defense => 20;

  @override
  double get infantry_health => 5;
  @override
  double get cavalry_health => 5;
  @override
  double get archer_base_attack => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path => 'images/equipments/weapons/dragon\'s breath bow.png';
  @override
  String get equipment_name => 'dragon\'s breath bow';
}

class scepter_of_the_glorious_goddess extends weapons {
  @override
  double get troop_attack => 15;
  @override
  double get troop_base_attack => 3;

  @override
  String get rank => 'legendary';
  @override
  String get image_path =>
      'images/equipments/weapons/scepter of the glorious goddess.png';
  @override
  String get equipment_name => 'scepter of the glorious goddess';
}

class shield_of_the_eternal_empire extends weapons {
  @override
  double get infantry_attack => 20;
  @override
  double get archer_defense => 5;
  @override
  double get cavalry_attack => 5;
  @override
  double get infantry_base_attack => 3;

  @override
  String get rank => 'legendary';
  @override
  String get image_path =>
      'images/equipments/weapons/shield of the eternal empire.png';
  @override
  String get equipment_name => 'shield of the eternal empire';
}

class sacred_dominion extends weapons {
  @override
  double get cavalry_attack => 25;
  @override
  double get archer_defense => 5;
  @override
  double get cavalry_base_attack => 3;
  @override
  String get rank => 'legendary';
  @override
  String get image_path => 'images/equipments/weapons/sacred dominion.png';
  @override
  String get equipment_name => 'sacred dominion';
}

class hummer_of_the_sun_and_moon extends weapons {
  @override
  double get infantry_attack => 25;
  @override
  double get archer_health => 5;
  @override
  double get infantry_base_attack => 3;
  @override
  String get rank => 'legendary';
  @override
  String get image_path =>
      'images/equipments/weapons/hummer of the sun and moon.png';
  @override
  String get equipment_name => 'hummer of the sun and moon';
}

class the_hydras_blast extends weapons {
  @override
  double get archer_defense => 25;
  @override
  double get cavalry_defense => 5;
  @override
  double get archer_base_attack => 3;
  @override
  String get rank => 'legendary';
  @override
  String get image_path => 'images/equipments/weapons/the hydra\'s blast.png';
  @override
  String get equipment_name => 'the hydra\'s blast';
}

class lance_of_the_hellish_wasteland extends weapons {
  @override
  double get cavalry_attack => 20;
  @override
  double get infantry_health => 5;
  @override
  double get archer_attack => 5;
  @override
  double get cavalry_base_attack => 3;
  @override
  String get rank => 'legendary';
  @override
  String get image_path =>
      'images/equipments/weapons/lance of the hellish wasteland.png';
  @override
  String get equipment_name => 'lance of the hellish wasteland';
}

class trial_of_the_lost_kingdom extends weapons {
  @override
  double get cavalry_defense => 15;
  @override
  double get infantry_health => 5;
  @override
  double get archer_attack => 5;
  @override
  String get rank => 'legendary';

  @override
  String get image_path =>
      'images/equipments/weapons/trial oft he lost kingdom.png';
  @override
  String get equipment_name => 'trial oft he lost kingdom';
}

class twilight_epiphany extends weapons {
  @override
  double get siege_attack => 25;
  @override
  double get siege_base_attack => 3;
  @override
  String get rank => 'legendary';

  @override
  String get image_path => 'images/equipments/weapons/twilight epiphany.png';
  @override
  String get equipment_name => 'twilight epiphany';
}

class golden_age extends weapons {
  @override
  double get archer_defense => 13;
  @override
  double get infantry_defense => 6;
  @override
  double get cavalry_attack => 4;
  @override
  String get rank => 'epic';

  @override
  String get image_path => 'images/equipments/weapons/golden age.png';
  @override
  String get equipment_name => 'golden age';
}

class heart_of_the_saint extends weapons {
  @override
  double get cavalry_defense => 13;
  @override
  double get archer_health => 6;
  @override
  double get infantry_health => 4;
  @override
  String get rank => 'epic';

  @override
  String get image_path => 'images/equipments/weapons/heart of the saint.png';
  @override
  String get equipment_name => 'heart of the saint';
}

class sakura_fubuki extends weapons {
  @override
  double get infantry_attack => 13;
  @override
  double get cavalry_health => 6;
  @override
  double get archer_attack => 4;
  @override
  @override
  String get rank => 'epic';
  @override
  String get image_path => 'images/equipments/weapons/sakura fubuki.png';
  @override
  String get equipment_name => 'sakura fubuki';
}

class knights_oathsworn_bow extends weapons {
  @override
  double get siege_attack => 13;
  @override
  String get rank => 'epic';
  @override
  String get image_path =>
      'images/equipments/weapons/knight\'s oathsworn bow.png';
  @override
  String get equipment_name => 'knight\'s oathsworn bow';
}

class blazing_axe extends weapons {
  @override
  double get cavalry_attack => 8;
  @override
  double get archer_attack => 5;
  @override
  double get infantry_attack => 3;

  @override
  String get rank => 'elite';
  @override
  String get image_path => 'images/equipments/weapons/blazing axe.png';
  @override
  String get equipment_name => 'blazing axe';
}

class staff_of_the_lost extends weapons {
  @override
  double get archer_defense => 8;
  @override
  double get infantry_defense => 5;
  @override
  double get cavalry_defense => 3;
  @override
  String rank = 'elite';
  @override
  String get image_path => 'images/equipments/weapons/staff of the lost.png';
  @override
  String get equipment_name => 'staff of the lost';
}

class gatekeepers_shield extends weapons {
  @override
  double get infantry_health => 8;

  @override
  double get cavalry_health => 5;
  @override
  String rank = 'elite';
  @override
  String get image_path => 'images/equipments/weapons/gatekeeper\'s shield.png';
  @override
  String get equipment_name => 'gatekeeper\'s shield';
}

class vanguard_halberd extends weapons {
  @override
  double get cavalry_defense => 5;
  @override
  double get cavalry_health => 4;
  @override
  String rank = 'advanced';
  @override
  String get image_path => 'images/equipments/weapons/vanguard halberd.png';
  @override
  String get equipment_name => 'vanguard halberd';
}

class blessed_blade extends weapons {
  @override
  double get infantry_health => 6;
  @override
  double get archer_attack => 4;
  @override
  String rank = 'advanced';
  @override
  String get image_path => 'images/equipments/weapons/blessed blade.png';
  @override
  String get equipment_name => 'blessed blade';
}
