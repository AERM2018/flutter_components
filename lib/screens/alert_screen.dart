import 'package:fl_advanced/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert screen'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Hey you!'),
            content: const Text('You\'re awesome'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Thanks'),
              ),
            ],
          ),
        ),
        child: const Text('Show Dialog'),
      )),
      drawer: CustomDrawer(),
    );
  }
}
