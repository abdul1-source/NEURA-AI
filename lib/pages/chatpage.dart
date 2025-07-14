import 'package:flutter/material.dart';
import 'package:semester_project/widgets/answersection.dart';
import 'package:semester_project/widgets/sidebar.dart';
import 'package:semester_project/widgets/sourcessection.dart';

class ChatPage extends StatelessWidget {
  final String question;
  const ChatPage({super.key,required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: const Text(
      'Chat Page',
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.white), 
  ),
      body: Row(
        children: [
          // const Sidebar(),
          const SizedBox(width: 100,),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(question,style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 24,),
                  // SourcesSection(),
                  SizedBox(height: 10,),
                  Answersection()
                  
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}