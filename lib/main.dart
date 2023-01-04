
import 'package:first_app/splash_screen.dart';
import 'package:first_app/widget/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'Design Demo.dart';
import 'another.dart';

main(){
  runApp(First_app());
}
class First_app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: splash_screen(),
    );
  }
}

class Working_Area extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Working_Area_State();
  }
}
class Working_Area_State extends State<Working_Area>{
  var count = 0;
  var no1Controler = TextEditingController();
  var no2Controler = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Application'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrange.shade100,
              Colors.teal.shade100,
            ]
          )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: no1Controler,
                      decoration: InputDecoration(
                        suffix: Icon(Icons.first_page_outlined),
                        hintText: 'First Value',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),

                        )
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffix: Icon(Icons.first_page_outlined),
                        hintText: 'Second Value',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                      keyboardType: TextInputType.number,
                      controller: no2Controler,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          var no1 = int.parse(no1Controler.text.toString());
                          var no2 = int.parse(no2Controler.text.toString());
                          var sum = no1+no2;
                          result = 'Sum Of $no1 And $no2 Is $sum';
                          setState(() {});
                      },
                          style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                            textStyle:TextStyle(fontFamily: 'FontHead') ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )
                  ), child: Text('Add')),
                      ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controler.text.toString());
                      var no2 = int.parse(no2Controler.text.toString());
                      var mul = no1*no2;
                      result = 'Multiply $no1 By $no2 Is $mul';
                      setState(() {});
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            textStyle: TextStyle(fontFamily: 'FontHead'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )
                          ),
                          child: Text('Mult')),
                      ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controler.text.toString());
                      var no2 = int.parse(no2Controler.text.toString());
                      var sub = no1-no2;
                      result = 'Difference Between $no1 And $no2 Is $sub';
                      setState(() {});
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            textStyle: TextStyle(fontFamily: 'FontHead'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            )
                          ),
                          child: Text('Subt')),
                      ElevatedButton(onPressed: (){
                      setState(() {
                        var no1 = int.parse(no1Controler.text.toString());
                        var no2 = int.parse(no2Controler.text.toString());
                        var div = no1/no2;
                        result = '$no1 Can Be divided By $no2 , ${div.toStringAsFixed(2)} Times';
                      });
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            textStyle: TextStyle(fontFamily: 'FontHead'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )
                          ),
                          child: Text('Devi')),
                    ],
                  ),
                  Text(result,style: TextStyle(fontSize: 25,color: Colors.indigo),),
                  ConstrainedBox(
                      child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => design_demo(),));
                  }, child: Text('Simple Design Demo')),
                    constraints: BoxConstraints(
                    minWidth: 200,
                    maxWidth: 200,
                  )),
                  ConstrainedBox(
                    child: ElevatedButton(onPressed: (){
                      var n = 'Another Page';
                      Navigator.push(context, MaterialPageRoute(builder: (context) => richtext(n)));
                    }, child: Text('Another Page')),
                      constraints: BoxConstraints(
                    minWidth: 200,
                    maxWidth: 200,
                  )),
                  ConstrainedBox(
                    child: RoundedButton(btnName:'UnClickable',icon:Icon(Icons.lock),
                      textStyle: TextStyle(fontSize: 23),),
                      constraints: BoxConstraints(
                    minWidth: 200,
                    maxWidth: 200,
                  ))
                ],
              ),
            ),
          ),
        ),
      )


    );
  }
}


class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arr = [1,2,3,4,5,6,7,8,9,10,11];
    return Expanded(
        flex: 2,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:
            [
              Colors.deepOrange.shade100,
              Colors.teal.shade100
            ])
          ),
          child: ListView.builder(itemBuilder: (context, index) => SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Logos.png'),
            ),
          ),itemCount: 10,scrollDirection: Axis.horizontal,
          ),));
  }
}
class Middle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Expanded(
      flex: 4,
      child: Container(decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.tealAccent.shade100,
            Colors.limeAccent.shade100
          ]
        )
      ),
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: const ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage('assets/images/Flutter.png'),
              backgroundColor: Colors.cyan,),
            title: Text('Name'),
            subtitle: Text('Mob No.'),
            trailing: Icon(Icons.add_alarm),
          ),
        ),itemCount: 10,
        ),
      ));
  }
}
class bottom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.yellow.shade100,
                Colors.deepOrange.shade100
              ]
            )
          ),
          child: ListView.builder(itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                )
            ),
          ),itemCount: 10,scrollDirection: Axis.horizontal,),
        ));
}}
class tobo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return  Expanded(
    flex: 2,
    child: Container(decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.blue.shade100,
          Colors.greenAccent.shade100
        ]
      )
    ),
      child: ListView.builder(itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.amberAccent,
          ),
        ),
      ),scrollDirection: Axis.horizontal,itemCount: 10,),
    )
  );
  }

}