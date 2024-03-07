import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:provider_fav_app/fav_provider.dart';

class favscreen extends StatefulWidget {
  const favscreen({super.key});

  @override
  State<favscreen> createState() => _favscreenState();
}

class _favscreenState extends State<favscreen> {

  List<int> selecteditem = [];
  final favprovider = Provider.of<favitem>(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Fav App"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context, index){
              return ListTile(
                onTap: (){
                  favprovider.selecteditem.add(index);
                  setState(() {
                    //simple state management
                  });
                }
                ,
                title: Text("Item" + index.toString()),
                trailing: selecteditem.contains(index) ?  Icon(Icons.favorite, color: Colors.red) : Icon(Icons.favorite_outline, color: Colors.grey[500],)
              );
            },
            itemCount: 100,),
          )
        ],
      ),
    );
  }
}