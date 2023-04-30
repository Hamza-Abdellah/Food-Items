import 'food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class FoodList extends StatelessWidget {
  Food food;

  FoodList({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      Card(

        child: SizedBox(

          width: 190,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    color: Colors.white,

                    height: 140,
                    child: Image.network(food.imageURL,),
                  ),
                ),

                const SizedBox(height: 20,),

                Text(food.name, style: const TextStyle(fontSize: 15),),

                const SizedBox(height: 10,),
                Text(
                  "\$${food.price}", style: const TextStyle(fontSize: 15,),),



                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      initialRating: food.rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.teal,
                      ),
                      onRatingUpdate: (rating) {

                      },
                    ),
                    GestureDetector(
                      child: const Icon(
                        Icons.add_shopping_cart,
                        color: Colors.teal,
                      ),
                      onTap: () {

                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}