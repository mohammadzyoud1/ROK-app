import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Research_speed_data extends StatefulWidget {
  void Function(String) saving;
  Research_speed_data({
    required this.saving,
  });
  @override
  State<Research_speed_data> createState() => _Research_speed_data();
}

class _Research_speed_data extends State<Research_speed_data> {
  final TextEditingController value_control_1 = TextEditingController();
  final TextEditingController value_control_5 = TextEditingController();
  final TextEditingController value_control_10 = TextEditingController();
  final TextEditingController value_control_15 = TextEditingController();
  final TextEditingController value_control_30 = TextEditingController();
  final TextEditingController value_control_60 = TextEditingController();
  final TextEditingController value_control_180 = TextEditingController();
  final TextEditingController value_control_480 = TextEditingController();
  final TextEditingController value_control_900 = TextEditingController();

  void reset() {
    value_control_1.text = '0';
    value_control_5.text = '0';
    value_control_10.text = '0';
    value_control_15.text = '0';
    value_control_30.text = '0';
    value_control_60.text = '0';
    value_control_180.text = '0';
    value_control_480.text = '0';
    value_control_900.text = '0';
    total = 0;
    shownvalue = '0';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 77, 255),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Research speed Data'),
      ),
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/whale.png'),
                      fit: BoxFit.cover))),
          Padding(
            padding: EdgeInsets.only(bottom: bottomInset),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    padding_method('1m  ', value_control_1),
                    padding_method('5m', value_control_5),
                    padding_method('10m', value_control_10),
                    padding_method('15m', value_control_15),
                    padding_method('30m', value_control_30),
                    padding_method('60m', value_control_60),
                    padding_method('3h', value_control_180),
                    padding_method('8h', value_control_480),
                    padding_method('15h', value_control_900),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white.withOpacity(1),
                            child: Text(
                              '${AppLocalizations.of(context)?.total} =$shownvalue \n  $total ${AppLocalizations.of(context)!.minutes}',
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: FloatingActionButton(
                              heroTag: 'save',
                              child: Icon(Icons.save),
                              onPressed: () {
                                widget.saving(shownvalue);
                              }),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: FloatingActionButton(
                              heroTag: 'reset',
                              child: Icon(Icons.restart_alt_sharp),
                              onPressed: () {
                                reset();
                              }),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding padding_method(String base_value, TextEditingController the_control) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Row(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.black.withOpacity(1)),
            width: 130,
            child: Center(
              child: Text(
                '$base_value',
                style:
                    TextStyle(fontSize: 25, color: Colors.white.withOpacity(1)),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: TextField(
            controller: the_control,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3),
                )),
            onChanged: (value) => calculation(),
          ))
        ],
      ),
    );
  }

  int total = 0;
  var shownvalue = '0';
  void optimise_final_result(int optimised) {
    var day = (optimised ~/ 1440).toString();
    var hour = ((optimised % 1440) ~/ 60).toString();
    var min = (optimised % 60);
    shownvalue = '$day ' + 'd ' + '$hour ' + 'h ' + '$min ' + 'm';
  }

  void calculation() {
    setState(() {
      total = (int.tryParse(value_control_1.text) ?? 0) * 1 +
          (int.tryParse(value_control_5.text) ?? 0) * 5 +
          (int.tryParse(value_control_10.text) ?? 0) * 10 +
          (int.tryParse(value_control_15.text) ?? 0) * 15 +
          (int.tryParse(value_control_30.text) ?? 0) * 30 +
          (int.tryParse(value_control_60.text) ?? 0) * 60 +
          (int.tryParse(value_control_180.text) ?? 0) * 180 +
          (int.tryParse(value_control_480.text) ?? 0) * 480 +
          (int.tryParse(value_control_900.text) ?? 0) * 900;
    });
    optimise_final_result(total);
  }
}
