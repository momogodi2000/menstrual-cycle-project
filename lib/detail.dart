import 'package:flutter/material.dart';
import 'package:flutter_class/profile.dart';
import 'package:table_calendar/table_calendar.dart';
import 'model/User.dart';
import 'package:flutter/material.dart';

/*import 'package:flutter_class/provider/UserNotifier.dart';
import 'component/ItemCart.dart';
//import 'package:provider/provider.dart';
//import 'package:app/provider/UserNotifier.dart';
class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        children: Column(
            children:[
              Text("${usernot.user.name}"),
              Text("${usernot.user.age}"),
              Row(
              children: [
                ElevatedButton(
                    onPressed: usernot.updateAge,
                    child: Text("update Age")
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    ItemCard(),
                    ItemCard(),
                    ItemCard(),
                    ItemCard(),
                  ],
                )
                            ]
              )
            ]
          );


    );
  }
}*/
class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();

}

class _DetailsState extends State<Details> {
  DateTime today = DateTime.now();
 // String data = null;
  List<String> options = ['Option 1', 'Option 2', 'Option 3'];
  String selectedValue = "";  // Set an initial value

  @override
  Widget build(BuildContext context) {
    //data = ModalRoute.of(context)?.settings as User?;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            child: TableCalendar(
              rowHeight: 43,
              headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),

              focusedDay: today,
              firstDay: DateTime.utc(1990,2,1),
              lastDay: DateTime.utc(2030,3,14),
            ),

          ),


        ],
      ),
     /* body: ListView(
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).pushNamed('/',);
            },
            child:  Text(data!.name),
          ),
        ],
      ),*/
    );
  }
}

