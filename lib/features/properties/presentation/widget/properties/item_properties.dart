import 'package:flutter/material.dart';

class ItemProperties extends StatelessWidget {
  const ItemProperties(
      {Key? key,
      required this.url,
      required this.title,
      required this.ratingReviews,
      required this.totalReviews,
      required this.stars})
      : super(key: key);
  final String url;
  final String title;
  final String ratingReviews;
  final String totalReviews;
  final int stars;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            fit: StackFit.passthrough,
            children: [
              Image.network(
                url,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration:
                        BoxDecoration(color: Colors.grey.withOpacity(0.5)),
                    child: Row(
                      children: List.generate(
                          stars,
                          (index) => const Icon(
                                Icons.star,
                                color: Colors.yellowAccent,
                              )),
                    ),
                  ))
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                const SizedBox(width: 15,),
                Row(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(ratingReviews, style: const TextStyle(color: Colors.white),),
                    ),
                    Text(" $totalReviews reviews")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
