import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      home:Home() ,
  ),
  );
}
class Home extends StatelessWidget{
  const Home({super.key});
  Widget build(BuildContext context){
    return Scaffold(body:Center(
      child: Column(
        children: [
          Text("flutter internal",style: TextStyle(
            color: Colors.yellow,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 10,),
          SizedBox(width: 200,height: 200,
            child: Image(image: NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg"),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: ElevatedButton(onPressed: (){}, 
            child: Text("click me",style:TextStyle(color: Colors.blue),
            ),
            ),
          )
        ],
      ),
    ),
    );
  }
}
