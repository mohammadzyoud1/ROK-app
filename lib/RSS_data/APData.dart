import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AP_data extends StatefulWidget {
  void Function(String) saving;
  AP_data({
    required this.saving,
  });
  @override
  State<AP_data> createState() => _AP_data();
}

class _AP_data extends State<AP_data> {
  final TextEditingController value_control_50 = TextEditingController();
  final TextEditingController value_control_100 = TextEditingController();
  final TextEditingController value_control_500 = TextEditingController();
  final TextEditingController value_control_1000 = TextEditingController();
  void reset() {
    value_control_50.text = '0';
    value_control_100.text = '0';
    value_control_500.text = '0';
    value_control_1000.text = '0';
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
        title: Text('AP Data'),
      ),
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/AP.jpg'), fit: BoxFit.fill))),
          Padding(
            padding: EdgeInsets.only(bottom: bottomInset),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    padding_method('50', value_control_50),
                    padding_method('100', value_control_100),
                    padding_method('500', value_control_500),
                    padding_method('1,000', value_control_1000),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white.withOpacity(1),
                            child: Text(
                              '${AppLocalizations.of(context)?.total} =$shownvalue \n ',
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
      total = (int.tryParse(value_control_50.text) ?? 0) * 50 +
          (int.tryParse(value_control_100.text) ?? 0) * 100 +
          (int.tryParse(value_control_500.text) ?? 0) * 500 +
          (int.tryParse(value_control_1000.text) ?? 0) * 1000;
    });
    optimise_final_result(total);
  }
}