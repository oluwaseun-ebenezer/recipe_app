import 'package:flutter/material.dart';
import 'package:sidehustlefoodrecipe/firestore_sevice.dart';
import 'package:sidehustlefoodrecipe/recipe.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class Homepage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Recipe",)
      ),
        body:StreamBuilder(
          stream: FirestoreService().getFoods(),
          builder: (BuildContext context, AsyncSnapshot<List<Food>> snapshot){
            if(snapshot.hasError || !snapshot.hasData)
              return CircularProgressIndicator();
            return ListView.builder(itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index){
              Food food = snapshot.data![index];
              return ListTile(
                title: Text(food.title),
                subtitle: Text(food.ingredient),
              );
            },
            );
          },
        ) ,
    );
  }
}



