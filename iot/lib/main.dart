import 'package:flutter/material.dart';
double height,width;
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    //theme: appTheme,
    title: " Iot Project",
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return
        Scaffold(

          body:
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: height*.6,
                    width:width ,
                    child: Image.asset("assets/Smart house2.jpg",fit: BoxFit.fill,),
                    decoration: BoxDecoration(
                      border: Border.all(width: 0)
                    ),

                  ),
            //  Divider(height: 0,),
                  Container(
                    height: height*.4,
                    width:width ,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 145, 189),

                      // color: Colors.blue
                    ),
/*
          child:
          ,
*/
                  ),
                ],
              )
              ,         
              Positioned(
                top: height*.5 -80 ,
                height: height*.64,
                width: width ,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                   // margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only( topRight: Radius.circular(8),topLeft: Radius.circular(8)),
                        color: Colors.white

                    ),

                  ),

                ),
              ),
             // Positioned()

            ],
          )
          ,
        );
  }

}
