import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class gold_data extends StatefulWidget {
  void Function(String) saving;
  gold_data({
    required this.saving,
  });
  @override
  State<gold_data> createState() => _gold_data();
}

class _gold_data extends State<gold_data> {
  final TextEditingController value_control_500 = TextEditingController();
  final TextEditingController value_control_3000 = TextEditingController();
  final TextEditingController value_control_15000 = TextEditingController();
  final TextEditingController value_control_50000 = TextEditingController();
  final TextEditingController value_control_200000 = TextEditingController();
  final TextEditingController value_control_600000 = TextEditingController();
  final TextEditingController value_control_2000000 = TextEditingController();
  final TextEditingController value_control_in_hand = TextEditingController();
  void reset() {
    value_control_500.text = '0';
    value_control_3000.text = '0';
    value_control_15000.text = '0';
    value_control_50000.text = '0';
    value_control_200000.text = '0';
    value_control_600000.text = '0';
    value_control_2000000.text = '0';
    value_control_in_hand.text = '0';
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
        title: Text('gold Data'),
      ),
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/gold_background.jpg'),
                      fit: BoxFit.fill))),
          Padding(
            padding: EdgeInsets.only(bottom: bottomInset),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    padding_method('500', value_control_500),
                    padding_method('3,000', value_control_3000),
                    padding_method('15,000', value_control_15000),
                    padding_method('50,000', value_control_50000),
                    padding_method('200,000', value_control_200000),
                    padding_method('600,000', value_control_600000),
                    padding_method('2,000,000', value_control_2000000),
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
      total = (int.tryParse(value_control_500.text) ?? 0) * 500 +
          (int.tryParse(value_control_3000.text) ?? 0) * 3000 +
          (int.tryParse(value_control_15000.text) ?? 0) * 15000 +
          (int.tryParse(value_control_50000.text) ?? 0) * 50000 +
          (int.tryParse(value_control_200000.text) ?? 0) * 200000 +
          (int.tryParse(value_control_600000.text) ?? 0) * 600000 +
          (int.tryParse(value_control_2000000.text) ?? 0) * 2000000 +
          (int.tryParse(value_control_in_hand.text) ?? 0) * 1;
    });
    optimise_final_result(total);
  }
}
