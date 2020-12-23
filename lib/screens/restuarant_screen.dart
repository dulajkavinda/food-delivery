import 'package:flutter/material.dart';
import 'package:food_delivery_FT/models/restaurant.dart';
import 'package:food_delivery_FT/widgets/rating_stars.dart';

class RestuarantScreen extends StatefulWidget {
  final Restaurant restaurant;
  RestuarantScreen({this.restaurant});
  @override
  _RestuarantScreenState createState() => _RestuarantScreenState();
}

class _RestuarantScreenState extends State<RestuarantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                    fit: BoxFit.cover,
                    height: 220.0,
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage(widget.restaurant.imageUrl)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.pop(context),
                      color: Colors.white,
                      iconSize: 30.0,
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {},
                      color: Theme.of(context).primaryColor,
                      iconSize: 30.0,
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.restaurant.name,
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "0.2 miles away",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    )
                  ],
                ),
                RatingStars(rating: widget.restaurant.rating),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  widget.restaurant.address,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
