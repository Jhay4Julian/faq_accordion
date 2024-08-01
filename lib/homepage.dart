import 'package:faq_accordion/component/faq_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> faqList = [
    {
      'question': 'What is Flutter?',
      'answer':
          'Flutter is a mobile application development framework that allows developers to create high-performance, beautiful, and responsive mobile applications for multiple platforms using a single codebase.'
    },
    {
      'question': 'What is Dart?',
      'answer':
          'Dart is a client-side programming language that is used in Flutter for developing mobile applications.'
    },
    {
      'question': 'What are Stateless widgets?',
      'answer':
          'These widgets are immutable, meaning they cannot be changed once they are created. Stateless widgets are used when the UI elements do not need to be redrawn or updated frequently, such as a static text label or an icon. Stateless widgets are defined using the StatelessWidget class.'
    },
    {
      'question': 'What are Stateful widgets?',
      'answer':
          'These widgets are mutable and can be updated dynamically based on user interactions or other events. Stateful widgets are used when the UI elements need to be updated frequently, such as a list or form. Stateful widgets are defined using the StatefulWidget class. Note that stateful widgets require a State object to handle the mutable state, which is managed by the framework.'
    },
    {
      'question': 'What is MaterialApp in Flutter?',
      'answer':
          'MaterialApp is used for creating applications that follow the Material Design guidelines. It provides pre-built widgets that follow the Material Design specifications, such as AppBar, BottomNavigationBar, and FloatingActionButton.',
    },
    {
      'question': 'What is WidgetsApp in Flutter?',
      'answer':
          'WidgetsApp is used for creating applications that do not follow the Material Design guidelines. It provides a minimal set of widgets that can be used to create custom UI elements.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                'Frequently Asked Questions',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                    itemCount: faqList.length,
                    itemBuilder: (BuildContext context, index) {
                      return FaqCard(
                        question: faqList[index]['question']!,
                        answer: faqList[index]['answer']!,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
