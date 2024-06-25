import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {

  final List<int> _counts = List<int>.generate(100, (index) => 0);

  void _incrementCount(int index) {

    setState(() {
      _counts[index]++;

    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: _counts.length,
      itemBuilder: (context, index) {

        return ListItemWidget(
          count: _counts[index],

          onIncrement: () => _incrementCount(index),
        );
      },
    );
  }
}

class ListItemWidget extends StatelessWidget {

  final int count;
  final VoidCallback onIncrement;

  const ListItemWidget({
    required this.count,
    required this.onIncrement,
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [

          Text(count.toString()),
          MaterialButton(
            onPressed: onIncrement,
            child: const Text("+"),
            
          )
        ],),
    );}
  }
