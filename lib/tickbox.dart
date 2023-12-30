import 'package:flutter/material.dart';
import 'const.dart';
import 'tickbox.dart';


class TickBox extends StatefulWidget {

  final String objectName;

  const TickBox({Key? key, required this.objectName}) : super(key: key);


  @override
  State<TickBox> createState() => _TickBoxState();
}

class _TickBoxState extends State<TickBox> {
  @override
  bool ifClick = false;

  Widget build(BuildContext context) {

    final correspondingPrice = Constants.fruitsMap.containsKey(widget.objectName)
        ? Constants.fruitsMap[widget.objectName]
        : Constants.vegetablesMap.containsKey(widget.objectName)
        ? Constants.vegetablesMap[widget.objectName]
        : 'Error';



    return  Container(
      height: 80,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Checkbox(
                value: ifClick,
                onChanged: (value) {
                 setState(() {
                   if(value != null) {
                     ifClick = value;
                   }

                   if (value == true) {
                      DataStore.setMapValue(widget.objectName);
                   }
                 });
                },
            ),
            Text(widget.objectName , style: TextStyle( fontSize: 20 , color: Colors.black,),),

            Text(correspondingPrice.toString(),style: TextStyle(color: Colors.black54,fontSize: 21),)

          ],


        ),



    );
  }
}
