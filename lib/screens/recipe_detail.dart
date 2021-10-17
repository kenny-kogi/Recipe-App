import "package:flutter/material.dart";
import '../model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({ Key? key, required this.recipe }) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),

      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(image: AssetImage(widget.recipe.ImageUrl)),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(widget.recipe.label,
          style: const TextStyle(fontSize: 18.0),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(17.0),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index){
                // ignore: non_constant_identifier_names
                final ingredient = widget.recipe.ingredients[index];
                return Text('${ingredient.quantity} ${ingredient.measure} ${ingredient.name}');},
              )
              ),           
        ]
          ),
  )
 );
  }
}
      