import 'package:flutter/material.dart';

class Detay extends StatefulWidget{
  var imgPath;
 
  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(children: <Widget>[
Hero(tag: widget.imgPath,
                child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage(widget.imgPath),fit:BoxFit.cover)
            ),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(borderRadius: BorderRadius.circular(10),
          elevation: 4,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width-30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(16),
                                              child: Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(image: AssetImage('assets/dress.jpg'),fit: BoxFit.contain,)
                          ),
                        ),
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Laminated",style:TextStyle(fontSize: 22,fontFamily:'Montserrat',fontWeight: FontWeight.bold)),
                          SizedBox(height: 5,),
                          Text("Louiz vuitton",style:TextStyle(fontSize: 16,fontFamily:'Montserrat',color: Colors.grey)),
                          SizedBox(height: 10,),
                          Container(width: MediaQuery.of(context).size.width-170,
                          height: 30,
                            child: Text("One button V-neck long-sleeced waist female stitching dress",style:TextStyle(fontSize: 16,fontFamily:'Montserrat',color: Colors.grey))),
                        ],
                      )
                    ],
                  ),Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Text("\$6500",style: TextStyle(fontFamily: 'Montserrat',fontSize: 22)),
                        FloatingActionButton(child: Icon(Icons.arrow_forward,),backgroundColor: Colors.brown,onPressed: (){},)
                      ],
                    ),
                  )
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