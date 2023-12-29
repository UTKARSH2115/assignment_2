import 'package:assignment_2/vegetables.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: Center(
            child: Text(
              ' W E L C O M E ',
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey[850],
                fontWeight: FontWeight.w400,
                // fontFamily: 'Helvetica',
              ),
            ),
          ),
          // leading: Icon(
          //   Icons.menu,
          //   size: 32,
          // ),
          actions: [
            Icon(
              Icons.share,
              size: 30,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.person,
              size: 35,
            ),
          ],
        ),
      
         body: Center(
           child: SafeArea(
      
             child: Column(
      
                mainAxisAlignment: MainAxisAlignment.end,
               crossAxisAlignment: CrossAxisAlignment.center,
      
               children: [
      
                 Icon(Icons.shopping_bag,size: 80 , color: Colors.grey[600],),
      
                 SizedBox(height: 20,),
                 ElevatedButton(
      
                     onPressed: () {
                       Navigator.pushNamed(context, '/vegetablespage');
                     },
                     child: Text('Start Shopping', style: TextStyle(fontSize: 20,
                         fontWeight: FontWeight.w500),
                     ),
                 ),
                 SizedBox(height: 90)
      
      
      
      
               ],
      
      
      
             ),
           ),
         ),
      
      
      ),
    );
  }
}
