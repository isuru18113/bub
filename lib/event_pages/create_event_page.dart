import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateEventPage extends StatefulWidget {
  const CreateEventPage({Key? key}) : super(key: key);

  @override
  _CreateEventPageState createState() => _CreateEventPageState();
}
enum SingingCharacter { lafayette, jefferson }

class _CreateEventPageState extends State<CreateEventPage> {
   SingingCharacter _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }

  AppBar appBar(){
    return AppBar(
      title: Text("Create event"),
    );
  }
  Widget body(){

    return ListView(

      children: [

        startTimeTextField(),

        endTimeTextField(),


        dateTextField(),


        typeOfEvent(),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: placeOfEventTextField(),

        ),


      ],
    );
  }

  Widget date(){
    return ListTile(
      title: Text("2nd of September",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge!
            .copyWith(fontWeight: FontWeight.w700),
      ),

      leading: Icon(Icons.date_range_rounded),
      // trailing:  IconButton(onPressed: (){
      //
      //
      // }, icon: Icon(Icons.edit_rounded)),

      onTap: (){

      },
    );
  }

  Widget dateTextField(){

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Event Date",style: Theme.of(context).textTheme.bodyLarge!
                .copyWith(fontWeight: FontWeight.w400),),
          ),

          Divider(),
          TextButton(onPressed: (){


          }, child: Text("2nd Of September",
            style: Theme.of(context).textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.w700),)),
          TextButton(onPressed: (){


          }, child: Text("Edit Time"),)
        ],
      ),
    );
  }



  Widget startTimeTextField(){

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Commencement Time",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge!
                ,),
          ),

          Divider(),

          Text("12:23",
            style: Theme.of(context).textTheme.displayMedium!
                .copyWith(fontWeight: FontWeight.w700),),
          TextButton(onPressed: (){


          }, child: Text("Edit Time"),)
        ],
      ),
    );
  }

   Widget endTimeTextField(){

     return Card(
       child: Column(
         mainAxisSize: MainAxisSize.max,
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("End Time",
               textAlign: TextAlign.center,
               style: Theme.of(context).textTheme.bodyLarge!
               ,),
           ),

           Divider(),

           Text("12:23",
             style: Theme.of(context).textTheme.displayMedium!
                 .copyWith(fontWeight: FontWeight.w700),),
           TextButton(onPressed: (){


           }, child: Text("Edit Time"),)
         ],
       ),
     );
   }

  Widget placeOfEventTextField(){
    return Card(
      child: TextField(

        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Address',
        ),
      ),
    );

  }

  Widget typeOfEvent(){
    return  Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Event Type",style: Theme.of(context).textTheme.bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),),
          ),
          const Divider(),



          RadioListTile<SingingCharacter>(
            title: const Text('On Land'),
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value!;
              });
            },
          ),
          RadioListTile<SingingCharacter>(
            title: const Text('On Water'),
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value!;
              });
            },
          ),
        ],
      ),
    );
  }
  Widget numberOfRescuer(){
    return Text("resc");
  }

  Widget numberOfEquipment(){

    return Text("dssd");
  }

  Widget eventDuration(){

    return Text("duration");
  }

  Widget eventDescription(){
    return Text("event Descrption");
  }


}
