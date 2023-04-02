import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import 'third_screen.dart';

class SecondScreen extends StatefulWidget {
  static const String id = 'second_screen';

  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          arguments.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'DEVELOPER.............',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
              size: 32,
            ),
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'SEARCHING.............',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          ),
        ],
      ),
      body: secondScreen(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget secondScreen() {
    return Center(
      child: SizedBox(
        height: 60,
        width: 200,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, ThirdScreen.id, arguments: {
              'rollNo': 0786,
            });
          },
          style: ButtonStyle(
            shadowColor: MaterialStateProperty.all(
              Colors.blue,
            ),
            backgroundColor: MaterialStateProperty.all(
              Colors.brown,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          child: WidgetAnimator(
            atRestEffect: WidgetRestingEffects.wave(
              duration: const Duration(
                seconds: 5,
              ),
            ),
            child: const Text(
              'Second Screen',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget myFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          tooltip: 'Decrement',
          child: const Icon(
            Icons.remove,
            size: 32,
          ),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar() {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.camera,
              size: 32,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.chat,
              size: 32,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.group,
              size: 32,
            ),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.stacked_bar_chart,
              size: 32,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.call,
              size: 32,
            ),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
