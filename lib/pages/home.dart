import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Tree'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildHorizontalRow(),
                const SizedBox(
                  height: 32.0,
                ),
                _buildRowAndColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildRowAndColumn() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Colors.yellow,
              height: 60.0,
              width: 60.0,
            ),
            const SizedBox(
              height: 32.0,
            ),
            Container(
              color: Colors.yellow,
              height: 40.0,
              width: 40.0,
            ),
            const SizedBox(
              height: 32.0,
            ),
            Container(
              color: Colors.brown,
              height: 20.0,
              width: 20.0,
            ),
            const Divider(),
            _buildRowAndStack(),
            const Divider(),
            const Text('End of the Line'),
          ],
        ),
      ],
    );
  }

  Row _buildRowAndStack() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 100.0,
          child: Stack(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
              ),
              Container(
                height: 60.0,
                width: 60.0,
                color: Colors.amber,
              ),
              Container(
                height: 40.0,
                width: 40.0,
                color: Colors.brown,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row _buildHorizontalRow() {
    return Row(
      children: [
        Container(
          color: Colors.yellow,
          height: 40.0,
          width: 40.0,
        ),
        const SizedBox(
          width: 32.0,
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
            height: 40.0,
          ),
        ),
        const SizedBox(
          width: 32.0,
        ),
        Container(
          color: Colors.brown,
          height: 40.0,
          width: 40.0,
        ),
      ],
    );
  }
}
