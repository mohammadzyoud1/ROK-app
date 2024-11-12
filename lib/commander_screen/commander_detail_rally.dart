import 'package:flutter/material.dart';
import 'package:rokapp/commander_screen/commander_classes.dart';

class commander_rally extends StatefulWidget {
  commander the_chosen;
  commander_rally({required this.the_chosen});
  @override
  State<commander_rally> createState() => _commander_rally();
}

class _commander_rally extends State<commander_rally> {
  @override
  Widget build(BuildContext context) {
    int length_pair_commanders =
        widget.the_chosen.paired_commanders_rally.length;

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
                                          .paired_commanders_rally[index]
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
