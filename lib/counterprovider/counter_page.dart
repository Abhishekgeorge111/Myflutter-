import 'package:flutter/material.dart';
import 'package:flutter_application_chat/counterprovider/counter.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<CounterProvider>().value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().incrementcounter();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decrementcounter();
            },
            child: Icon(Icons.remove),
          ),
          Provider.of<CounterProvider>(context).elevatedButton(
              onPressed: () {
                context.read<CounterProvider>().incrementcounter();
              },
              text: 'change'),
        ],
      ),
    );
  }
}
