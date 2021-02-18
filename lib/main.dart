/// Sign in Form

import 'package:flutter/material.dart';
// import 'package:flutter_app/my-app.dart';
import 'file:///E:/ITI_Frontend_cpf/15-%20Flutter/flutter_app/lib/views/second-route.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Sign in';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: Center(child: const Text(_title))),
        body: MyStatefulWidget(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Email'),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Password'),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your Password',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        // Process data.
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondRoute(),
                          ),
                        );
                      }
                    },
                    child: Center(child: Text('Sign in')),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0, 5.0),
                child: Center(child: Text('Need an account? Register')),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0, 5.0),
                child: Center(child: Text('Forgot Password?')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
