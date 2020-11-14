import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

//TODO:: import flutter_typehead
// dependencies:
//   flutter:
//     sdk: flutter
//   flutter_typeahead: ^1.8.8

class Temop extends StatefulWidget {
  Temop({Key key}) : super(key: key);

  @override
  _TemopState createState() => _TemopState();
}

class _TemopState extends State<Temop> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _typeAheadController = TextEditingController();
  String _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: this._formKey,
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                TypeAheadFormField(
                  textFieldConfiguration: TextFieldConfiguration(
                      controller: this._typeAheadController,
                      decoration: InputDecoration(labelText: 'Type')),
                  suggestionsCallback: (pattern) {
                    return DataProvide.getSuggestions(pattern);
                  },
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      title: Text(suggestion),
                    );
                  },
                  transitionBuilder: (context, suggestionsBox, controller) {
                    return suggestionsBox;
                  },
                  onSuggestionSelected: (suggestion) {
                    this._typeAheadController.text = suggestion;
                  },
                  onSaved: (value) => this._selectedValue = value,
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    if (this._formKey.currentState.validate()) {
                      this._formKey.currentState.save();
                      Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('selected  ${this._selectedValue}')));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DataProvide {
  static final List<String> data = ["Mary", "Shelly", "Igor"];

  static List<String> getSuggestions(String query) {
    List<String> matches = List();
    matches.addAll(data);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}
