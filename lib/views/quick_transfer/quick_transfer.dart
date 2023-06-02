import 'package:aba_bank_app/utilities/constants.dart';
import 'package:aba_bank_app/widgets/listtile.dart';
import 'package:flutter/material.dart';

class QuickTransfer extends StatelessWidget {
  const QuickTransfer({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final String title;
  final String description;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondaryColor,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text(title),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_month),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: color,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(icon, size: 50, color: Colors.white),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
              ),
              ...List.generate(
                20,
                (index) => ListQuickTransfer(
                    name: 'Mean Vatanak', phone: '012 345 678'),
              )
            ],
          ),
        ));
  }
}
