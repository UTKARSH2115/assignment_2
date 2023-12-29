import 'package:flutter/material.dart';
import 'const.dart';
import 'tickbox.dart';

class BillPage extends StatefulWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  final array = DataStore.getArray();

  // Variable to store the final calculated price
  int finalPrice = 0;

  @override
  void initState() {
    // Called when the widget is inserted into the tree
    super.initState();

    // Calculate the total price by summing up individual item prices
    for (int i = 0; i < array.length; i++) {
      finalPrice += DataStore.getPrice(array[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        backgroundColor: Colors.deepPurple[300],
        title: Center(
          child: Text(
            ' C H E C K O U T ',
            softWrap: true,
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey[850],
              fontWeight: FontWeight.w400,
              // fontFamily: 'Helvetica',
            ),
          ),
        ),
        // leading: Icon
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
      body: Column(
        children: [
          // Display a text indicating items summary
          const Text(
            'Items Summary',
            style: TextStyle(color: Colors.black),
          ),

          // Expanded ensures that the ListView takes up all available vertical space
          Expanded(
            // ListView.builder creates a scrollable list of widgets based on the array
            child: ListView.builder(
              itemCount: array.length,
              itemBuilder: (context, index) {
                // Row widget arranges its children in a horizontal array with space between them
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Display the name of the item
                    Text(
                      array[index],
                      style: const TextStyle(color: Colors.black),
                    ),

                    // Display the price of the item
                    Text(
                      DataStore.getPrice(array[index]).toString(),
                      style: const TextStyle(color: Colors.black),
                    )
                  ],
                );
              },
            ),
          ),

          // Row widget arranges its children in a horizontal array with space between them
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Display the total label
              const Text(
                'NET AMOUNT',
                style: TextStyle(color: Colors.black,fontSize: 19),
              ),

              // Display the calculated total price
              Text(
                finalPrice.toString(),
                style: const TextStyle(color: Colors.black,fontSize: 19),
              ),
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/startpage');
                  },
                  child: Text('cancel')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/startpage');
                  },
                  child: Text('Submit')),
            ],
          ),
          SizedBox(height: 40,),

        ],

      ),

    );
  }
}
// ElevatedButton(
//     onPressed: () {
//       Navigator.pushNamed(context, '/startpage');
//     },
//     child: Text('cancel')),
// SizedBox(
//   width: 20,
// ),
// ElevatedButton(
//     onPressed: () {
//       Navigator.pushNamed(context, '/startpage');
//     },
//     child: Text('Submit')),
