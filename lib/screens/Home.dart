import 'package:fetch_api/api/Fetch.dart';
import '../model/DataModels/DataModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   Future<DataModel>? fetch;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   fetch= FetchApi().getData();
   //check_connection();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return FutureBuilder<DataModel>(
      future: fetch,
      
      builder: (context,AsyncSnapshot<DataModel> snapshot) {
        if(snapshot.hasData){
          return GestureDetector(
          
            child: Scaffold(
          
              appBar: AppBar(
                centerTitle: true,
                title: Text(snapshot.data!.routes.elementAt(0).copyrights),
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.black12
                ),
                backgroundColor: Color(0xff859EC9),elevation: 0),
                  body: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10
                ),
                height: height / 1,
                width: width / 1,
                //color: Colors.red,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.directions_walk,size: 36,color: Colors.grey,),
                         Icon(Icons.arrow_forward,size:36,color: Colors.grey,),
                         Icon(Icons.directions_bus,size: 36,color: Color(0xff859EC9),),
                         SizedBox(width: width*0.02,),
                         DistanceContainer(height, width,snapshot.data!.routes.elementAt(0).legs.elementAt(0).duration.text,16),
                         Icon(Icons.arrow_forward,size: 36,color:Colors.grey),
                          Icon(Icons.directions_walk,size: 36,color: Colors.grey,),
                         Icon(Icons.arrow_forward,size: 36,color: Colors.grey,),
                         Icon(Icons.directions_bus,size: 36,color: Color(0xff859EC9),),
                         SizedBox(width: width*0.02,),
                         DistanceContainer(height, width,snapshot.data!.routes.elementAt(2).legs.elementAt(0).duration.text,12)
                      ],
                    ),
                    Divider(height: height*0.1,thickness: 1,),
                    Row(
                      children: [
                         Icon(Icons.directions_walk,size: 36,color: Colors.grey,),
                         Icon(Icons.arrow_forward,size:36,color: Colors.grey,),
                         Icon(Icons.directions_bus,size: 36,color: Color(0xff859EC9),),
                         SizedBox(width: width*0.02,),
                         DistanceContainer(height, width,snapshot.data!.routes.elementAt(3).legs.elementAt(0).duration.text,12),
                         Icon(Icons.arrow_forward,size: 36,color:Colors.grey),
                          Icon(Icons.directions_walk,size: 36,color: Colors.grey,),
                         Icon(Icons.arrow_forward,size: 36,color: Colors.grey,),
                         Icon(Icons.directions_bus,size: 36,color: Color(0xff859EC9),),
                         SizedBox(width: width*0.02,),
                         DistanceContainer(height, width,snapshot.data!.routes.elementAt(3).legs.elementAt(0).duration.text,12)
                      ],
                    ),
                    Divider(height: height*0.1,thickness: 1),
                    Row(
                      children: [
                         Icon(Icons.directions_walk,size: 36,color: Colors.grey,),
                         Icon(Icons.arrow_forward,size:36,color: Colors.grey,),
                         Icon(Icons.directions_bus,size: 36,color: Color(0xff859EC9),),
                         SizedBox(width: width*0.02,),
                         DistanceContainer(height, width,snapshot.data!.routes.elementAt(1).legs.elementAt(0).duration.text,16),
                         Icon(Icons.arrow_forward,size: 36,color:Colors.grey),
                          Icon(Icons.directions_walk,size: 36,color: Colors.grey,),
                         
                      ],
                    ),
                  ],
                )
              ),
                        ],
                  ),
                ),
          );
        }else if(snapshot.hasError){
          return Container(
            height: MediaQuery.of(context).size.height/1,
            width: MediaQuery.of(context).size.width/1,
            color: Colors.white,
            child: Center(
              child: Container(
                 height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width/1,
                child: Center(
                  child: Text('No Connection',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'regular',
                    decorationColor: Colors.white
                  ),
                  ),
                ),
              ),
            ),
          );
      }else{
        return Container(
          height: MediaQuery.of(context).size.height/1,
          width: MediaQuery.of(context).size.width/1,
          color: Colors.white,
          child: Center(
            child:Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      }
      } 
       
    );
  }
}
Widget DistanceContainer(height,width,distance,int textsize){
  
  return Container(
                    height: height*0.045,
                    width: width*0.1,
                    child: Center(
                      child: Text(distance.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      
                        fontSize: textsize.toDouble()
                      ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff859EC9)
                    ),
                   );
}