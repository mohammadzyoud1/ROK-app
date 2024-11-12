import 'package:flutter/material.dart';
import 'package:rokapp/commander_screen/commander_classes.dart';
import 'package:rokapp/commander_screen/image_view.dart';

class commander_garrison_trees extends StatefulWidget {
  commander the_chosen;
  commander_garrison_trees({required this.the_chosen});
  @override
  State<commander_garrison_trees> createState() => _commander_garrison_trees();
}

class _commander_garrison_trees extends State<commander_garrison_trees> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    int list_length = widget.the_chosen.garrison_tree_paths.length;
    String attack_icon_tree = 'images/stats_tree_icons/attack_icon_tree.png';
    String defense_icon_tree = 'images/stats_tree_icons/defense_icon_tree.png';
    String health_icon_tree = 'images/stats_tree_icons/health_icon_tree.png';
    String speed_icon_tree = 'images/stats_tree_icons/speed_icon_tree.png';
    if (screen_width > screen_height) {
      double temp;
      temp = screen_width;
      screen_width = screen_height;
      screen_height = temp;
    }
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //  crossAxisCount: 1,
            //  mainAxisSpacing: 5,
            //),
            itemCount: list_length > 0 ? list_length : 1,
            itemBuilder: (BuildContext context, index) {
              if (list_length > 0) {
                return Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 181, 225, 246),
                  child: Column(
                    children: [
                      Text(
                          '${widget.the_chosen.general_speech_about_garrison_tree(context)[index]}',
                          style: TextStyle(color: Colors.black)),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                RichText(
                                  text: TextSpan(children: [
                                    WidgetSpan(
                                        alignment: PlaceholderAlignment.top,
                                        baseline: TextBaseline.ideographic,
                                        child: Image.asset(
                                          '$attack_icon_tree',
                                          width: screen_width * 0.05,
                                          height: screen_width * 0.05,
                                        )),
                                    TextSpan(
                                        text: widget.the_chosen
                                                .garrison_tree_stats.isNotEmpty
                                            ? '${widget.the_chosen.garrison_tree_stats[index][0]}'
                                            : "",
                                        style: TextStyle(color: Colors.black))
                                  ]),
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    WidgetSpan(
                                        alignment: PlaceholderAlignment.top,
                                        baseline: TextBaseline.ideographic,
                                        child: Image.asset(
                                          '$defense_icon_tree',
                                          width: screen_width * 0.05,
                                          height: screen_width * 0.05,
                                        )),
                                    TextSpan(
                                        text: widget.the_chosen
                                                .garrison_tree_stats.isNotEmpty
                                            ? '${widget.the_chosen.garrison_tree_stats[index][1]}'
                                            : "",
                                        style: TextStyle(color: Colors.black))
                                  ]),
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    WidgetSpan(
                                        alignment: PlaceholderAlignment.top,
                                        baseline: TextBaseline.ideographic,
                                        child: Image.asset(
                                          '$health_icon_tree',
                                          width: screen_width * 0.05,
                                          height: screen_width * 0.05,
                                        )),
                                    TextSpan(
                                        text: widget.the_chosen
                                                .garrison_tree_stats.isNotEmpty
                                            ? '${widget.the_chosen.garrison_tree_stats[index][2]}'
                                            : "",
                                        style: TextStyle(color: Colors.black))
                                  ]),
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    WidgetSpan(
                                        alignment: PlaceholderAlignment.top,
                                        baseline: TextBaseline.ideographic,
                                        child: Image.asset(
                                          '$speed_icon_tree',
                                          width: screen_width * 0.05,
                                          height: screen_width * 0.05,
                                        )),
                                    TextSpan(
                                        text: widget.the_chosen
                                                .garrison_tree_stats.isNotEmpty
                                            ? '${widget.the_chosen.garrison_tree_stats[index][3]}'
                                            : "",
                                        style: TextStyle(color: Colors.black))
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screen_width * 0.03,
                          ),
                          Container(
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => image_view(
                                              image_path: widget.the_chosen
                                                      .garrison_tree_paths[
                                                  index])));
                                },
                                child: Stack(
                                  children: [
                                    Image(
                                      width: screen_width * 0.3,
                                      image: AssetImage(widget.the_chosen
                                          .garrison_tree_paths[index]),
                                      fit: BoxFit.fill,
                                    ),
                                    Positioned.fill(
                                      child: Center(
                                        child: Icon(
                                          Icons.zoom_out_map_rounded,
                                          color: Colors.white,
                                          size: screen_width * 0.08,
                                          shadows: [
                                            Shadow(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              blurRadius: 4,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 3, color: Colors.black.withOpacity(0.7)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.7),
                            spreadRadius: 5,
                            blurRadius: 3,
                          )
                        ]),
                    child: Image.asset(
                      'images/i dunno.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              }
            }),
      ),
    );
  }
}
