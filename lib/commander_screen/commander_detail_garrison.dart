import 'package:flutter/material.dart';
import 'package:rokapp/commander_screen/commander_classes.dart';

class commander_garrison extends StatefulWidget {
  commander the_chosen;
  commander_garrison({required this.the_chosen});
  @override
  State<commander_garrison> createState() => _commander_garrison();
}

class _commander_garrison extends State<commander_garrison> {
  @override
  Widget build(BuildContext context) {
    int length_pair_commanders =
        widget.the_chosen.paired_commanders_garrison.length;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              child: Text(
                  'overview here soem general detaisl about the commander uses in rallies '),
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(widget.the_chosen.image_path),
                ),
                length_pair_commanders != 0
                    ? Expanded(
                        child: Container(
                          height: 50,
                          child: ListView.builder(
                              itemCount: length_pair_commanders,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, index) {
                                return Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                      widget
                                          .the_chosen
                                          .paired_commanders_garrison[index]
                                          .image_path,
                                      fit: BoxFit.fill,
                                    ));
                              }),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
