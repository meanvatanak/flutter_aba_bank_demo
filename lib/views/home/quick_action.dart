import 'package:aba_bank_app/utilities/constants.dart';
import 'package:aba_bank_app/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';

class QuickAction extends StatelessWidget {
  const QuickAction({
    Key? key,
    required this.routeArguments,
  }) : super(key: key);

  final Map<String, dynamic> routeArguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(routeArguments['title']),
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
              color: cyanColor,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          routeArguments['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          routeArguments['description'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      routeArguments['icon'],
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
            ...List.generate(
              20,
              (index) => ListTileWidget(
                name: 'Mean Vatanak',
                phone: '012 345 678',
              ),
            )
          ],
        ),
      ),
    );
  }
}
