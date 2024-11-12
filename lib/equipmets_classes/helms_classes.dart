// ignore_for_file: camel_case_types, non_constant_identifier_names

class helms {
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

class gold_helm_of_the_eternal_empire extends helms {
  @override
  double get infantry_defense => 11;

  @override
  double get cavalry_health => 3;
  @override
  double get archer_health => 4;
  @override
  double get infantry_base_defense => 3;
  @override
  String get rank => "legendary";
  @override
  String get image_path =>
      'images/equipments/helms/gold helm of the eternal empire.png';
  @override
  String get equipment_name => 'gold helm of the eternal empire';
}

class dragons_breath_helm extends helms {
  @override
  double get infantry_defense => 4;

  @override
  double get cavalry_attack => 3;

  @override
  double get archer_attack => 11;
  @override
  double get archer_base_defense => 3;

  @override
  String rank = 'legendary';
  @override
  String get image_path => 'images/equipments/helms/dragon\'s breath helm.png';
  @override
  String get equipment_name => 'dragon\'s breath helm';
}

class war_helm_of_the_hellish_wasteland extends helms {
  @override
  double get infantry_attack => 4;
  @override
  double get cavalry_defense => 11;
  @override
  double get archer_defense => 3;
  @override
  double get cavalry_base_defense => 3;
  @override
  String rank = 'legendary';
  @override
  String get image_path =>
      'images/equipments/helms/war helm of the hellish wasteland.png';
  @override
  String get equipment_name => 'war helm of the hellish wasteland';
}

class diadem_of_the_glorious_goddess extends helms {
  @override
  double get troop_attack => 8;
  @override
  double get troop_base_attack => 3;
  @override
  String rank = 'legendary';
  @override
  String get image_path =>
      'images/equipments/helms/diadem of the glorious goddess.png';
  @override
  String get equipment_name => 'diadem of the glorious goddess';
}

class fierce_wolfs_helmet extends helms {
  @override
  double get siege_attack => 14.5;
  @override
  double get siege_base_attack => 3;
  @override
  String rank = 'legendary';
  @override
  String get image_path => 'images/equipments/helms/fierce wolf\'s helmet.png';
  @override
  String get equipment_name => 'fierce wolf\'s helmet';
}

class ancestral_mask_of_night extends helms {
  @override
  double get infantry_attack => 8;
  @override
  double get archer_attack => 15;
  @override
  double get archer_base_defense => 3;
  @override
  String rank = 'legendary';
  @override
  String get image_path =>
      'images/equipments/helms/ancestral mask of night.png';
  @override
  String get equipment_name => 'ancestral mask of night';
}

class helm_of_the_conqueror extends helms {
  @override
  double get infantry_defense => 15;
  @override
  double get cavalry_health => 8;
  @override
  double get infantry_base_defense => 3;
  @override
  String rank = 'legendary';
  @override
  String get image_path => 'images/equipments/helms/helm of the conqueror.png';
  @override
  String get equipment_name => 'helm of the conqueror';
}

class pride_of_khan extends helms {
  @override
  double get cavalry_defense => 15;
  @override
  double get archer_health => 8;
  @override
  double get cavalry_base_defense => 3;
  @override
  String rank = 'legendary';
  @override
  String get image_path => 'images/equipments/helms/pride of khan.png';
  @override
  String get equipment_name => 'pride of khan';
}

class revival_helm extends helms {
  @override
  double get infantry_defense => 5;
  @override
  double get archer_defense => 7.5;
  @override
  String rank = 'epic';
  @override
  String get image_path => 'images/equipments/helms/revival helm.png';
  @override
  String get equipment_name => 'revival helm';
}

class abyssal_visage extends helms {
  @override
  double get infantry_attack => 3;
  @override
  double get cavalry_attack => 8;
  @override
  double get archer_attack => 3;
  @override
  String rank = 'epic';
  @override
  String get image_path => 'images/equipments/helms/abyssal visage.png';
  @override
  String get equipment_name => 'abyssal visage';
}

class witchs_lineage extends helms {
  @override
  double get infantry_attack => 8;
  @override
  double get cavalry_attack => 3;
  @override
  double get archer_defense => 3;
  @override
  String rank = 'epic';
  @override
  String get image_path => 'images/equipments/helms/witch\'s lineage.png';
  @override
  String get equipment_name => 'witch\'s lineage';
}

class kinghts_steel_diadem extends helms {
  @override
  double get siege_health => 8;
  @override
  String rank = 'epic';
  @override
  String get image_path => 'images/equipments/helms/kinght\'s steel diadem.png';
  @override
  String get equipment_name => 'kinght\'s steel diadem';
}

class expedition_war_helm extends helms {
  @override
  double get infantry_defense => 2;
  @override
  double get cavalry_defense => 6;
  @override
  String rank = 'elite';
  @override
  String get image_path => 'images/equipments/helms/expedition war helm.png';
  @override
  String get equipment_name => 'expedition war helm';
}

class windswept_war_helm extends helms {
  @override
  double get infantry_attack => 4.5;
  @override
  double get cavalry_attack => 4.5;
  @override
  String rank = 'elite';
  @override
  String get image_path => 'images/equipments/helms/windswept war helm.png';
  @override
  String get equipment_name => 'windswept war helm';
}

class helm_of_fear extends helms {
  @override
  double get infantry_defense => 2;

  @override
  double get cavalry_attack => 4;
  @override
  double get cavalry_defense => 0;

  @override
  String rank = 'advanced';
  @override
  String get image_path => 'images/equipments/helms/helm of fear.png';
  @override
  String get equipment_name => 'helm of fear';
}

class helm_of_the_phoenix extends helms {
  @override
  double get infantry_health => 2;
  @override
  double get archer_defense => 4;
  @override
  String rank = 'advanced';
  @override
  String get image_path => 'images/equipments/helms/helm of the phoenix.png';
  @override
  String get equipment_name => 'helm of the phoenix';
}
