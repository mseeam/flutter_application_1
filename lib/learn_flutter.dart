import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  bool isSwitch = false;
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Learning Page !'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/flutter_image.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
                child: Text(
              "Ready to learn FLUTTER to grind ?",
              style: TextStyle(color: Colors.white),
            )),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitch ? Colors.green : Colors.blue,
            ),
            onPressed: () {
              debugPrint('Elevated Button Pressed');
            },
            child: const Text('Elevated button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outlined Butto n Pressed');
            },
            child: const Text('Outlined button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('TextButton Button Pressed');
            },
            child: const Text('TextButton button'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.local_fire_department,
                color: CupertinoColors.systemRed,
              ),
              Text('Inside Row widget'),
              Icon(
                Icons.local_airport_rounded,
                color: CupertinoColors.systemRed,
              )
            ],
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newValue) {
                setState(() {
                  isSwitch = newValue;
                });
              }),
          Checkbox(
              value: isCheck,
              onChanged: (bool? newCheck) {
                setState(() {
                  isCheck = newCheck;
                });
              })
        ],
      ),
    );
  }
}
