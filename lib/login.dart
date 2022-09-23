import 'package:flutter/material.dart';
import 'package:flutter_project_evaluasi_35/home.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  static const String _title = 'Catatan Rahasia';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const FormInputPin(),
      ),
    );
  }
}

class FormInputPin extends StatefulWidget {
  const FormInputPin({super.key});

  @override
  State<FormInputPin> createState() => _FormInputPinState();
}

class _FormInputPinState extends State<FormInputPin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Masukkan PIN Anda'),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter Your PIN',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ),
                  );
                }
              },
              child: const Text('Buka'),
            ),
          ),
        ],
      ),
    );
  }
}
