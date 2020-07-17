import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dc_student_netra/Utils/global.dart' as globals;
class MarketPlace extends StatefulWidget{

  final String serviceName;
  final String description;
  final int serviceId;
  final String servicePic;

  MarketPlace({this.serviceName, this.description, this.serviceId,this.servicePic});
  @override
  _MarketPlaceState createState()=> _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new PreferredSize(
        child: new Container(
          child:Column(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top
                ),
                child: new Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 20.0, bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child:new Text(
                            'Netra Market Place',textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                        ),

                      ],
                    )
                ),
                decoration: new BoxDecoration(
                    gradient: new LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,
                        colors: [
                          Colors.red,
                          Colors.orange
                        ]
                    ),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.orange[500],
                        blurRadius: 20.0,
                        spreadRadius: 20.0,
                      )
                    ]
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        width: 70,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.network(globals.baseUrl+widget.servicePic,fit: BoxFit.fill,),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child:Text(widget.serviceName, style: TextStyle(fontSize: 17.0, color: Colors.black,),)
                      )
                    ],
                  )
              )
            ],
          )
        ) ,
        preferredSize: new Size(
            MediaQuery.of(context).size.width,
            170.0
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: false,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.30,
                width: double.infinity,
                child: ListView(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 15,top: 15,bottom: 10,right: 15),
                        child:AutoSizeText(
                         widget.description,
                          style: TextStyle(fontSize: 15.0),
                          minFontSize: 15.0,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                        )
                    )
                  ],
                )
            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Container(
                  height: 25,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Image.asset("assets/asset-1.png")
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child:Text(
                      "  99.0",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.orange,
                      ),
                    )
                ),
                Expanded(
              // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
               child: Container(
                   height: MediaQuery.of(context).size.height * 0.09,
                  // width: MediaQuery.of(context).size.height ,
                   padding: EdgeInsets.only(left: 50, top:10,right: 20,),
                   child: new InkWell(
                     child: new Container(
                         decoration: new BoxDecoration(
                             border: new Border.all(color: Colors.orange,
                                 width: 1),
                             borderRadius: new BorderRadius.circular(12),
                             gradient: new LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,
                                 colors: [
                                   Colors.red,
                                   Colors.orange
                                 ]
                             ),
                         ),
                         child: Row(
                           children: <Widget>[
                             Container(
                               padding: EdgeInsets.only(left: 40),
                               child:new Text('Subscribe',
                                 style: new TextStyle(fontSize:  20, color: Colors.white),
                               ),
                             ),
                             Expanded(
                                 child: Icon(Icons.arrow_forward_ios,color: Colors.white,)
                             )
                           ],
                         )
                       ),
                     )
                   ),
                 ),
               ],
             ),
            SizedBox(height: 10,),
            Divider(
              height: 5,
            ),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child:Text(
                  "NETRA Points",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                )
            ),
            Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
                height: MediaQuery.of(context).size.height * 0.18,
              child: Card(
                elevation: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   Container(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 30, bottom: 0),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Icon(FontAwesomeIcons.star,color: Colors.orange,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 0, top: 0, bottom: 0),
                              child:  Text('1000',style: TextStyle(color: Colors.orange,fontSize: 15),),
                            ),

                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Icon(FontAwesomeIcons.star,color: Colors.orange,),
                            ),
                          ],
                        )

                    ),
                    SizedBox(height: 5,),
                    Expanded(
                  child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       InkWell(
                          child: Container(
                            padding: EdgeInsets.only(top: 10,bottom: 10,left: 50,right: 50),
                            decoration: BoxDecoration(
                              gradient: new LinearGradient(
                                  begin: Alignment.bottomCenter,end: Alignment.topCenter,
                                  colors: [
                                    Colors.red,
                                    Colors.orange
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Text("Redeem",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ),
                    SizedBox(height: 10,)
                  ],
                )
              )
            )
          ],
        ),
      ),
    );
  }
}