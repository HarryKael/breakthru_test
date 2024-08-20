import 'package:breakthru_test/screens/components/components.dart';
import 'package:breakthru_test/src/utils.dart';
import 'package:flutter/material.dart';

class PruebaAppDesktop extends StatefulWidget {
  const PruebaAppDesktop({super.key, this.title = 'Prueba App Desktop'});
  final String title;

  @override
  State<PruebaAppDesktop> createState() => _PruebaAppDesktopState();
}

class _PruebaAppDesktopState extends State<PruebaAppDesktop> {
  int _counter = 0;

  void _incrementCounter(BuildContext context) {
    if (_counter != 10) {
      setState(() {
        _counter++;
      });
    } else {
      showDialogUtility(context, 'Error', 'No puedes incrementar a más de 10.');
    }
  }

  void _decrementCounter(BuildContext context) {
    if (_counter == 0) {
      showDialogUtility(context, 'Error', 'No puedes bajar a más de 0.');
    } else {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const PImage(),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Tooltip(
              message: 'Decrement',
              child: TextButton(
                onPressed: () => _decrementCounter(context),
                child: const Text('Decrement'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
