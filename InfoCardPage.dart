import 'package:flutter/material.dart';
import 'package:world_time_app/widgets/info_card.dart';

class InfoCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WidgetStructure_bar')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InfoCard.left_11(
              // heading: 'Hola Amigo',
              imgSource:
                  'https://images.unsplash.com/photo-1781438587437-c0e4cb48be70?q=80&w=989&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',

              line1:
                  " Success is the sum of small efforts repeated every single day.",

              line2:
                  "The person you will be in five years depends on what you do today. ",
              //line3: 'Discipline is choosing what you want most over what you want now.',
              // line4: 'Great things are not done by impulse but by small conscious actions',
            ),

            InfoCard.right_11(
              imgSource:
                  'https://images.unsplash.com/photo-1781438587437-c0e4cb48be70?q=80&w=989&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              line1:
                  'Success is the sum of small efforts repeated every single day.',
              line2:
                  "The person you will be in five years depends on what you do today. ",
            ),

            InfoCard.left_22(
              imgSource:
                  'https://images.unsplash.com/photo-1781438587437-c0e4cb48be70?q=80&w=989&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              line1:
                  'Success is the sum of small efforts repeated every single day.',
              line2:
                  "The person you will be in five years depends on what you do today. ",
              line3:
                  'Discipline is choosing what you want most over what you want now.',
              line4:
                  'Great things are not done by impulse but by small conscious actions',
            ),

            InfoCard.right_22(
              imgSource:
                  'https://images.unsplash.com/photo-1781438587437-c0e4cb48be70?q=80&w=989&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              line1:
                  'Success is the sum of small efforts repeated every single day.',
              line2:
                  "The person you will be in five years depends on what you do today. ",
              line3:
                  'Discipline is choosing what you want most over what you want now.',
              line4:
                  'Great things are not done by impulse but by small conscious actions',
            ),

            InfoCard.center_22(
              imgSource:
                  'https://images.unsplash.com/photo-1781438587437-c0e4cb48be70?q=80&w=989&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              line1:
                  'Success is the sum of small efforts repeated every single day.',
              line2: " ",
              line3: null,
              line4: null,
            ),
          ],
        ),
      ),
    );
  }
}
