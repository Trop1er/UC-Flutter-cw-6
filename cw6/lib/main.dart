import 'package:cw6/Building.dart';
import 'package:cw6/detailspage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  
  var buildings = [
  Building(
    name: 'أبراج الكويت',
    imgUrl:
        'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
  ),
  Building(
    name: 'برج التحرير',
    imgUrl:
        'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
  ),
  Building(
    name: 'المسجد الكبير',
    imgUrl:
        'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
  ),
];
   
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.indigo, 
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kuwait City Landmarks'),
        ),
       body: Center(
          child: ListView.builder(
            itemCount: buildings.length,
            itemBuilder: (context, index){
              return ListTile(
                leading: Image.network(buildings[index].imgUrl  ),
                title: Text(buildings[index].name),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(yousef: buildings[index])));
                  }, 
                icon: Icon(Icons.arrow_right)),
              );
            })
        ),
      ),

    );
  }
  
 

  Container LandmarkListItem() {
    return Container(
        margin: EdgeInsets.fromLTRB(30, 70, 30, 0),
        child: ListTile(
          tileColor: Colors.grey[300],
          leading: CircleAvatar(),
          title: Text('data', 
          textAlign: TextAlign.center
          ,),
          trailing: ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_right_alt),),
        ),
      );
  }
}
