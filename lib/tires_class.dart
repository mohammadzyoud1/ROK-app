abstract class Troop_base {
  int get base_power;
  int get base_mge_point;
  int get base_train_speed;
  int get base_heal_speed;
}

class T5 implements Troop_base {
  @override
  int get base_power => 10;
  @override
  int get base_mge_point => 100;
  @override
  int get base_train_speed => 120;
  @override
  int get base_heal_speed => 4;
}

class T4 implements Troop_base {
  @override
  int get base_power => 4;
  @override
  int get base_mge_point => 40;
  @override
  int get base_train_speed => 80;
  @override
  int get base_heal_speed => 3;
}

class T3 implements Troop_base {
  @override
  int get base_power => 3;
  @override
  int get base_mge_point => 20;
  @override
  int get base_train_speed => 60;
  @override
  int get base_heal_speed => 2;
}

class T2 implements Troop_base {
  @override
  int get base_power => 2;
  @override
  int get base_mge_point => 10;
  @override
  int get base_train_speed => 30;
  @override
  int get base_heal_speed => 1;
}

class T1 implements Troop_base {
  @override
  int get base_power => 1;
  @override
  int get base_mge_point => 5;
  @override
  int get base_train_speed => 15;
  @override
  int get base_heal_speed => 3;
}
//class T5 {
//  int base_power = 10;
//  int base_mge_point = 100;
//  int base_train_speed = 120;
//  int base_heal_speed = 4;
//}
//
//class T4 {
//  int base_power = 4;
//  int base_mge_point = 40;
//  int base_train_speed = 80;
//  int base_heal_speed = 3;
//}
//
//class T3 {
//  int base_power = 3;
//  int base_mge_point = 20;
//  int base_train_speed = 60;
//  int base_heal_speed = 2;
//}
//
//class T2 {
//  int base_power = 2;
//  int base_mge_point = 10;
//  int base_train_speed = 30;
//  int base_heal_speed = 1;
//}
//
//class T1 {
//  int base_power = 1;
//  int base_mge_point = 5;
//  int base_train_speed = 15;
//  int base_heal_speed = 3;
//}

abstract class Troop {
  int get food_needed_for_training;
  int get wood_needed_for_training;
  int get stone_needed_for_training;
  int get gold_needed_for_training;
  int get food_needed_for_healing;
  int get wood_needed_for_healing;
  int get stone_needed_for_healing;
  int get gold_needed_for_healing;
  // Add other necessary properties or methods
}

class inf_T5 implements Troop {
  @override
  int get food_needed_for_training => 800;
  @override
  int get wood_needed_for_training => 800;
  @override
  int get stone_needed_for_training => 0;
  @override
  int get gold_needed_for_training => 400;
  @override
  int get food_needed_for_healing => 320;
  @override
  int get wood_needed_for_healing => 320;
  @override
  int get stone_needed_for_healing => 0;
  @override
  int get gold_needed_for_healing => 160;
}

class inf_T4 implements Troop {
  @override
  int get food_needed_for_training => 300;
  @override
  int get wood_needed_for_training => 300;
  @override
  int get stone_needed_for_training => 0;
  @override
  int get gold_needed_for_training => 20;
  @override
  int get food_needed_for_healing => 120;
  @override
  int get wood_needed_for_healing => 120;
  @override
  int get stone_needed_for_healing => 0;
  @override
  int get gold_needed_for_healing => 8;
}

class inf_T3 implements Troop {
  @override
  int get food_needed_for_training => 150;
  @override
  int get wood_needed_for_training => 150;
  @override
  int get stone_needed_for_training => 0;
  @override
  int get gold_needed_for_training => 10;
  @override
  int get food_needed_for_healing => 60;
  @override
  int get wood_needed_for_healing => 60;
  @override
  int get stone_needed_for_healing => 0;
  @override
  int get gold_needed_for_healing => 4;
}

class inf_T2 implements Troop {
  @override
  int get food_needed_for_training => 100;
  @override
  int get wood_needed_for_training => 100;
  @override
  int get stone_needed_for_training => 0;
  @override
  int get gold_needed_for_training => 0;
  @override
  int get food_needed_for_healing => 40;
  @override
  int get wood_needed_for_healing => 40;
  @override
  int get stone_needed_for_healing => 0;
  @override
  int get gold_needed_for_healing => 0;
}

class inf_T1 implements Troop {
  @override
  int get food_needed_for_training => 50;
  @override
  int get wood_needed_for_training => 50;
  @override
  int get stone_needed_for_training => 0;
  @override
  int get gold_needed_for_training => 0;
  @override
  int get food_needed_for_healing => 20;
  @override
  int get wood_needed_for_healing => 20;
  @override
  int get stone_needed_for_healing => 0;
  @override
  int get gold_needed_for_healing => 0;
}

class cav_T5 implements Troop {
  @override
  int get food_needed_for_training => 800;
  @override
  int get wood_needed_for_training => 0;
  @override
  int get stone_needed_for_training => 600;
  @override
  int get gold_needed_for_training => 400;
  @override
  int get food_needed_for_healing => 3200;
  @override
  int get wood_needed_for_healing => 0;
  @override
  int get stone_needed_for_healing => 240;
  @override
  int get gold_needed_for_healing => 160;
}

class cav_T4 implements Troop {
  @override
  int get food_needed_for_training => 300;
  @override
  int get wood_needed_for_training => 0;
  @override
  int get stone_needed_for_training => 225;
  @override
  int get gold_needed_for_training => 20;
  @override
  int get food_needed_for_healing => 120;
  @override
  int get wood_needed_for_healing => 0;
  @override
  int get stone_needed_for_healing => 90;
  @override
  int get gold_needed_for_healing => 8;
}

class cav_T3 implements Troop {
  @override
  int get food_needed_for_training => 150;
  @override
  int get wood_needed_for_training => 0;
  @override
  int get stone_needed_for_training => 112;
  @override
  int get gold_needed_for_training => 10;
  @override
  int get food_needed_for_healing => 60;
  @override
  int get wood_needed_for_healing => 0;
  @override
  int get stone_needed_for_healing => 44;
  @override
  int get gold_needed_for_healing => 4;
}

class cav_T2 implements Troop {
  @override
  int get food_needed_for_training => 100;
  @override
  int get wood_needed_for_training => 0;
  @override
  int get stone_needed_for_training => 75;
  @override
  int get gold_needed_for_training => 0;
  @override
  int get food_needed_for_healing => 40;
  @override
  int get wood_needed_for_healing => 0;
  @override
  int get stone_needed_for_healing => 30;
  @override
  int get gold_needed_for_healing => 0;
}

class cav_T1 implements Troop {
  @override
  int get food_needed_for_training => 60;
  @override
  int get wood_needed_for_training => 40;
  @override
  int get stone_needed_for_training => 0;
  @override
  int get gold_needed_for_training => 0;
  @override
  int get food_needed_for_healing => 24;
  @override
  int get wood_needed_for_healing => 16;
  @override
  int get stone_needed_for_healing => 0;
  @override
  int get gold_needed_for_healing => 0;
}

class arch_T5 implements Troop {
  @override
  int get food_needed_for_training => 0;
  @override
  int get wood_needed_for_training => 800;
  @override
  int get stone_needed_for_training => 600;
  @override
  int get gold_needed_for_training => 400;
  @override
  int get food_needed_for_healing => 0;
  @override
  int get wood_needed_for_healing => 320;
  @override
  int get stone_needed_for_healing => 240;
  @override
  int get gold_needed_for_healing => 160;
}

class arch_T4 implements Troop {
  @override
  int get food_needed_for_training => 0;
  @override
  int get wood_needed_for_training => 300;
  @override
  int get stone_needed_for_training => 225;
  @override
  int get gold_needed_for_training => 20;
  @override
  int get food_needed_for_healing => 120;
  @override
  int get wood_needed_for_healing => 90;
  @override
  int get stone_needed_for_healing => 0;
  @override
  int get gold_needed_for_healing => 8;
}

class arch_T3 implements Troop {
  @override
  int get food_needed_for_training => 0;
  @override
  int get wood_needed_for_training => 150;
  @override
  int get stone_needed_for_training => 112;
  @override
  int get gold_needed_for_training => 10;
  @override
  int get food_needed_for_healing => 0;
  @override
  int get wood_needed_for_healing => 60;
  @override
  int get stone_needed_for_healing => 44;
  @override
  int get gold_needed_for_healing => 4;
}

class arch_T2 implements Troop {
  @override
  int get food_needed_for_training => 0;
  @override
  int get wood_needed_for_training => 100;
  @override
  int get stone_needed_for_training => 75;
  @override
  int get gold_needed_for_training => 0;
  @override
  int get food_needed_for_healing => 0;
  @override
  int get wood_needed_for_healing => 40;
  @override
  int get stone_needed_for_healing => 30;
  @override
  int get gold_needed_for_healing => 0;
}

class arch_T1 implements Troop {
  @override
  int get food_needed_for_training => 40;
  @override
  int get wood_needed_for_training => 60;
  @override
  int get stone_needed_for_training => 0;
  @override
  int get gold_needed_for_training => 0;
  @override
  int get food_needed_for_healing => 16;
  @override
  int get wood_needed_for_healing => 24;
  @override
  int get stone_needed_for_healing => 0;
  @override
  int get gold_needed_for_healing => 0;
}

class siege_T5 implements Troop {
  @override
  int get food_needed_for_training => 500;
  @override
  int get wood_needed_for_training => 500;
  @override
  int get stone_needed_for_training => 400;
  @override
  int get gold_needed_for_training => 400;
  @override
  int get food_needed_for_healing => 200;
  @override
  int get wood_needed_for_healing => 200;
  @override
  int get stone_needed_for_healing => 160;
  @override
  int get gold_needed_for_healing => 160;
}

class siege_T4 implements Troop {
  @override
  int get food_needed_for_training => 200;
  @override
  int get wood_needed_for_training => 200;
  @override
  int get stone_needed_for_training => 150;
  @override
  int get gold_needed_for_training => 20;
  @override
  int get food_needed_for_healing => 80;
  @override
  int get wood_needed_for_healing => 80;
  @override
  int get stone_needed_for_healing => 60;
  @override
  int get gold_needed_for_healing => 8;
}

class siege_T3 implements Troop {
  @override
  int get food_needed_for_training => 100;
  @override
  int get wood_needed_for_training => 100;
  @override
  int get stone_needed_for_training => 75;
  @override
  int get gold_needed_for_training => 10;
  @override
  int get food_needed_for_healing => 40;
  @override
  int get wood_needed_for_healing => 40;
  @override
  int get stone_needed_for_healing => 30;
  @override
  int get gold_needed_for_healing => 4;
}

class siege_T2 implements Troop {
  @override
  int get food_needed_for_training => 65;
  @override
  int get wood_needed_for_training => 65;
  @override
  int get stone_needed_for_training => 50;
  @override
  int get gold_needed_for_training => 0;
  @override
  int get food_needed_for_healing => 26;
  @override
  int get wood_needed_for_healing => 26;
  @override
  int get stone_needed_for_healing => 20;
  @override
  int get gold_needed_for_healing => 0;
}

class siege_T1 implements Troop {
  @override
  int get food_needed_for_training => 60;
  @override
  int get wood_needed_for_training => 60;
  @override
  int get stone_needed_for_training => 0;
  @override
  int get gold_needed_for_training => 0;
  @override
  int get food_needed_for_healing => 24;
  @override
  int get wood_needed_for_healing => 24;
  @override
  int get stone_needed_for_healing => 0;
  @override
  int get gold_needed_for_healing => 0;
}






//class infantry_T5 extends T5 {
//  int food_needed_for_training = 800;
//  int wood_needed_for_training = 800;
//  int stone_needed_for_training = 0;
//  int gold_needed_for_training = 400;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class infantry_T4 extends T4 {
//  int food_needed_for_training = 300;
//  int wood_needed_for_training = 300;
//  int stone_needed_for_training = 0;
//  int gold_needed_for_training = 20;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class infantry_T3 extends T3 {
//  int food_needed_for_training = 150;
//  int wood_needed_for_training = 150;
//  int stone_needed_for_training = 0;
//  int gold_needed_for_training = 10;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class infantry_T2 extends T2 {
//  int food_needed_for_training = 100;
//  int wood_needed_for_training = 100;
//  int stone_needed_for_training = 0;
//  int gold_needed_for_training = 0;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class infantry_T1 extends T1 {
//  int food_needed_for_training = 50;
//  int wood_needed_for_training = 50;
//  int stone_needed_for_training = 0;
//  int gold_needed_for_training = 0;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}

//class cavalry_T5 extends T5 {
//  int food_needed_for_training = 800;
//  int wood_needed_for_training = 0;
//  int stone_needed_for_training = 600;
//  int gold_needed_for_training = 400;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class cavalry_T4 extends T4 {
//  int food_needed_for_training = 300;
//  int wood_needed_for_training = 0;
//  int stone_needed_for_training = 225;
//  int gold_needed_for_training = 20;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class cavalry_T3 extends T3 {
//  int food_needed_for_training = 150;
//  int wood_needed_for_training = 0;
//  int stone_needed_for_training = 112;
//  int gold_needed_for_training = 10;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class cavalry_T2 extends T2 {
//  int food_needed_for_training = 100;
//  int wood_needed_for_training = 0;
//  int stone_needed_for_training = 75;
//  int gold_needed_for_training = 0;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class cavalry_T1 extends T1 {
//  int food_needed_for_training = 60;
//  int wood_needed_for_training = 40;
//  int stone_needed_for_training = 0;
//  int gold_needed_for_training = 0;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//class archer_T5 extends T5 {
//  int food_needed_for_training = 0;
//  int wood_needed_for_training = 800;
//  int stone_needed_for_training = 600;
//  int gold_needed_for_training = 400;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class archer_T4 extends T4 {
//  int food_needed_for_training = 0;
//  int wood_needed_for_training = 300;
//  int stone_needed_for_training = 225;
//  int gold_needed_for_training = 20;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class archer_T3 extends T3 {
//  int food_needed_for_training = 0;
//  int wood_needed_for_training = 150;
//  int stone_needed_for_training = 112;
//  int gold_needed_for_training = 10;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class archer_T2 extends T2 {
//  int food_needed_for_training = 0;
//  int wood_needed_for_training = 100;
//  int stone_needed_for_training = 75;
//  int gold_needed_for_training = 0;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class archer_T1 extends T1 {
//  int food_needed_for_training = 40;
//  int wood_needed_for_training = 60;
//  int stone_needed_for_training = 0;
//  int gold_needed_for_training = 0;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//class siege_t1 extends T1 {
//  int food_needed_for_training = 60;
//  int wood_needed_for_training = 60;
//  int stone_needed_for_training = 0;
//  int gold_needed_for_training = 0;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class siege_t2 extends T2 {
//  int food_needed_for_training = 65;
//  int wood_needed_for_training = 65;
//  int stone_needed_for_training = 50;
//  int gold_needed_for_training = 0;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class siege_t3 extends T3 {
//  int food_needed_for_training = 100;
//  int wood_needed_for_training = 100;
//  int stone_needed_for_training = 75;
//  int gold_needed_for_training = 10;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class siege_t4 extends T4 {
//  int food_needed_for_training = 200;
//  int wood_needed_for_training = 200;
//  int stone_needed_for_training = 150;
//  int gold_needed_for_training = 20;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
//
//class siege_t5 extends T5 {
//  int food_needed_for_training = 500;
//  int wood_needed_for_training = 500;
//  int stone_needed_for_training = 400;
//  int gold_needed_for_training = 400;
//  int food_needed_for_healing = 0;
//  int wood_needed_for_healing = 0;
//  int stone_needed_for_healing = 0;
//  int gold_needed_for_healing = 0;
//}
