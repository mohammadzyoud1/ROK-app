// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rokapp/commander_screen/commander_classes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class commander_overview extends StatefulWidget {
  commander the_chosen;
  commander_overview({required this.the_chosen});
  @override
  State<commander_overview> createState() => _commander_overview();
}

class _commander_overview extends State<commander_overview> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    if (screen_width > screen_height) {
      double temp;
      temp = screen_width;
      screen_width = screen_height;
      screen_height = temp;
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(163, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: RichText(
                  text: TextSpan(
                      text:
                          '${widget.the_chosen.general_speech_about_the_commander(context)}',
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: screen_height * 0.005,
              ),
              Text(
                '${AppLocalizations.of(context)?.field_secondary_commanders}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screen_height * 0.005,
              ),
              pairs_view(
                  widget.the_chosen.paired_commanders_field.length,
                  widget.the_chosen.paired_commanders_field,
                  widget.the_chosen.general_speech_about_field(context)),
              SizedBox(
                height: screen_height * 0.005,
              ),
              Container(
                child: Text(
                  '${AppLocalizations.of(context)?.rally_secondary_commanders}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: screen_height * 0.005,
              ),
              pairs_view(
                  widget.the_chosen.paired_commanders_rally.length,
                  widget.the_chosen.paired_commanders_rally,
                  widget.the_chosen.general_speech_about_rally(context)),
              Container(
                child: Text(
                  '${AppLocalizations.of(context)?.garrison_secondary_commanders}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: screen_height * 0.005,
              ),
              pairs_view(
                  widget.the_chosen.paired_commanders_garrison.length,
                  widget.the_chosen.paired_commanders_garrison,
                  widget.the_chosen.general_speech_about_garrison(context))
            ],
          ),
        ),
      ),
    );
  }

  Container pairs_view(
    int length_pair_commanders,
    List the_list,
    String speach_of_no_secondary,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: Colors.black.withOpacity(0.7),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.2,
              child: Image.asset(
                widget.the_chosen.image_path,
                fit: BoxFit.fill,
              ),
            ),
          ),
          length_pair_commanders != 0
              ? Expanded(
                  child: Container(
                    height: 50,
                    child: ListView.builder(
                        itemCount: length_pair_commanders,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.0625,
                                width:
                                    MediaQuery.of(context).size.height * 0.0625,
                                child: Image.asset(
                                  the_list[index].image_path,
                                  fit: BoxFit.fill,
                                )),
                          );
                        }),
                  ),
                )
              : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(speach_of_no_secondary),
                  ),
                ),
        ],
      ),
    );
  }
}
