import 'package:aba_bank_app/utilities/constants.dart';
import 'package:aba_bank_app/widgets/num_card.dart';
import 'package:flutter/material.dart';

class AboutBottomSheet extends StatefulWidget {
  const AboutBottomSheet({Key? key}) : super(key: key);

  @override
  State<AboutBottomSheet> createState() => _AboutBottomSheetState();
}

class _AboutBottomSheetState extends State<AboutBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          CircleAvatar(
            radius: 50,
            backgroundColor: secondaryColor.withOpacity(0.4),
            child: Icon(
              Icons.lock,
              size: 50,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Enter PIN to continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: cyanColor,
                  )),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              // childAspectRatio: 1.5,
              physics: NeverScrollableScrollPhysics(),
              children: [
                NumberCard(title: '1'),
                NumberCard(title: '2'),
                NumberCard(title: '3'),
                NumberCard(title: '4'),
                NumberCard(title: '5'),
                NumberCard(title: '6'),
                NumberCard(title: '7'),
                NumberCard(title: '8'),
                NumberCard(title: '9'),
                NumberCard(title: 'C'),
                NumberCard(title: '0'),
                NumberCard(title: '', myIcon: Icons.backspace),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
