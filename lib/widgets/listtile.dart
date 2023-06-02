import 'package:flutter/material.dart';

class ListQuickTransfer extends StatelessWidget {
  const ListQuickTransfer({
    Key? key,
    required this.name,
    required this.phone,
  }) : super(key: key);

  final String name;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          title: Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            phone,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          trailing: Column(
            children: [
              Text('...'),
              Spacer(),
              Icon(Icons.favorite_outline),
            ],
          ),
        ),
      ),
    );
  }
}
