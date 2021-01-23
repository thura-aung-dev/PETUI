import 'package:flutter/material.dart';
import 'package:welcome/Welcome.dart';
main(List<String> args) {
  runApp(MaterialApp(
    
    home: PET(),title: "PET",));
}
class PET extends StatefulWidget {
  @override
  _PETState createState() => _PETState();
}

class _PETState extends State<PET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome()),);
          },
                  child: Container(
          height: double.infinity,
          child: Image.asset("images/pet.jpg",fit: BoxFit.cover,),
      ),
        ),
      Center(child: Text("PET LOVER",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 40,),))
      ],)
     
      
    );
  }
}