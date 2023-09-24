import 'package:flutter/material.dart';

void main() {
  runApp( const Myapp());
}
class Myapp extends StatefulWidget{
  const Myapp({super.key});



  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int c1=0,c2=0;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
         backgroundColor:Colors.orange,
         title: const Text("Points Counter"),
       ),
       body: SingleChildScrollView(
         child: Column(
           children: [
             IntrinsicHeight(
               child: Row(
                 children: [
                   Expanded(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         const Padding(
                           padding: EdgeInsets.only(top: 30.0,left: 10),
                           child: Text("Team A",style: TextStyle(fontSize: 40),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 15.0),
                           child: Text("$c1",style: const TextStyle(fontSize: 170,),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 10.0),
                           child: ElevatedButton(onPressed: (){
                             setState(() {
                               c1+=1;
                             });
                           },
                             style: ButtonStyle(
                                 backgroundColor: MaterialStateProperty.all(Colors.orange)), child: const Text("Add 1 points",style: TextStyle(color: Colors.black),),),
                         ),
                         ElevatedButton(onPressed: (){
                           setState(() {
                             c1+=2;
                           });
                         },
                           style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all(Colors.orange)), child: const Text("Add 2 points",style: TextStyle(color: Colors.black)),),
                         ElevatedButton(onPressed: (){
                           setState(() {
                             c1+=3;
                           });
                         },
                           style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all(Colors.orange)), child: const Text("Add 3 points",style: TextStyle(color: Colors.black)),),
                       ],
                     ),
                   ),
                const VerticalDivider(color: Colors.grey,thickness: 2,indent: 40,endIndent: 4,),

                   Column(
                     children: [
                       const Padding(
                         padding: EdgeInsets.only(top: 30.0,right: 20,left: 10),
                         child: Text("Team B",style: TextStyle(fontSize: 40),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:5.0,top: 15),
                         child: Text("$c2",style: const TextStyle(fontSize: 170,),),

                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 5.0,top: 10),
                         child: ElevatedButton(onPressed: (){
                           setState(() {
                             c2+=1;
                           });
                         },
                           style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all(Colors.orange)), child: const Text("Add 1 points",style: TextStyle(color: Colors.black)),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 5.0),
                         child: ElevatedButton(onPressed: (){
                           setState(() {
                             c2+=2;
                           });
                         },
                           style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all(Colors.orange)), child: const Text("Add 2 points",style: TextStyle(color: Colors.black)),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 5.0),
                         child: ElevatedButton(onPressed: (){
                           setState(() {
                             c2+=3;
                           });
                         },
                           style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all(Colors.orange)), child: const Text("Add 3 points",style: TextStyle(color: Colors.black)),),
                       ),
                     ],
                   ),



                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 20.0,top: 40,bottom: 40),
               child: ElevatedButton(onPressed: (){
                 setState(() {
                   c1=0;
                   c2=0;
                 });
               },
                 style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all(Colors.orange)
                 ,padding: MaterialStateProperty.all(const EdgeInsets.only(right: 50,left: 50))), child: const Text("Reset",style: TextStyle(color: Colors.black)),),
                        
             ),
           ],
         ),
       ),
     ),
   );
  }
}
