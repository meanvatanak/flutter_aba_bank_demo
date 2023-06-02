import 'package:aba_bank_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
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
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: primaryColor,
            child: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
          ),
          title: Text(name),
          subtitle: Text(phone),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('...'),
              Icon(Icons.favorite_outline),
            ],
          ),
        ),
      ),
    );
  }
}
