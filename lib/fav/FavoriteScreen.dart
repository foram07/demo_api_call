import 'package:demo_api_call/fav/fav_helper.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget{
  @override
  FavListing createState() => FavListing();


}

class FavListing  extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: FavoriteHelper.itemCount,
          itemBuilder: (BuildContext context, int index){
            var favModel=FavoriteHelper.getFavItem(index);
            return Container(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Name: ${favModel.name}"),
                  Text("Email: ${favModel.address}")

                ],
              ),
            );
          },
        ),
      ),
    );

  }
}