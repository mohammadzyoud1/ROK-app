import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class stone_data extends StatefulWidget {
  void Function(String) saving;
  stone_data({
    required this.saving,
  });
  @override
  State<stone_data> createState() => _stone_data();
}

class _stone_data extends State<stone_data> {
  final TextEditingController value_control_750 = TextEditingController();
  final TextEditingController value_control_7500 = TextEditingController();
  final TextEditingController value_control_37500 = TextEditingController();
  final TextEditingController value_control_112500 = TextEditingController();
  final TextEditingController value_control_375000 = TextEditingController();
  final TextEditingController value_control_1125000 = TextEditingController();
  final TextEditingController value_control_3750000 = TextEditingController();
  final TextEditingController value_control_in_hand = TextEditingController();
  void reset() {
    value_control_750.text = '0';
    value_control_7500.text = '0';
    value_control_37500.text = '0';
    value_control_112500.text = '0';
    value_control_375000.text = '0';
    value_control_1125000.text = '0';
    value_control_3750000.text = '0';
    value_control_in_hand.text = '0';

    ;
    total = 0;
    shownvalue = '0';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      backgroundColor: Colors.red,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Stone Data'),
      ),
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/stone_background.jpg'),
                      fit: BoxFit.fill))),
          Padding(
            padding: EdgeInsets.only(bottom: bottomInset),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    padding_method('750', value_control_750),
                    padding_method('7,500', value_control_7500),
                    padding_method('37,500', value_control_37500),
                    padding_method('112,500', value_control_112500),
                    padding_method('375,000', value_control_375000),
                    padding_method('1,125,000', value_control_1125000),
                    padding_method('3,750,000', value_control_3750000),
                    padding_method('In hand', value_control_in_hand),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white.withOpacity(1),
                            child: Text(
                              '${AppLocalizations.of(context)?.total} =$shownvalue \n  ',
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
    if (optimised >= 1000000 && optimised < 1000000000) {
      shownvalue = (optimised / 1000000).toStringAsFixed(3) + 'M';
    } else if (optimised >= 1000000000) {
      shownvalue = (optimised / 1000000000).toStringAsFixed(3) + 'B';
    } else if (optimised >= 1000 && optimised < 1000000) {
      shownvalue = (optimised / 1000).toStringAsFixed(3) + 'K';
    } else {
      shownvalue = optimised.toString();
    }
  }

  void calculation() {
    setState(() {
      total = (int.tryParse(value_control_750.text) ?? 0) * 750 +
          (int.tryParse(value_control_7500.text) ?? 0) * 7500 +
          (int.tryParse(value_control_37500.text) ?? 0) * 37500 +
          (int.tryParse(value_control_112500.text) ?? 0) * 112500 +
          (int.tryParse(value_control_375000.text) ?? 0) * 375000 +
          (int.tryParse(value_control_1125000.text) ?? 0) * 1125000 +
          (int.tryParse(value_control_3750000.text) ?? 0) * 3750000 +
          (int.tryParse(value_control_in_hand.text) ?? 0) * 1;
    });
    optimise_final_result(total);
  }
}