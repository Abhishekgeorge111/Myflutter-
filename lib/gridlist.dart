import 'package:flutter/material.dart';
import 'package:flutter_application_chat/silverlist/adapted.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'silver list and grid',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.count(
            mainAxisSpacing: 0,
            crossAxisCount: 3,
            children: [...myImagesAdapted],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: Colors.lightBlue,
                child: ListTile(
                  leading: const Text('Tile Number:'),
                  trailing: Text('$index'),
                ),
              ),
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
