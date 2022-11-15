import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/model/iteem.dart';
import 'package:food_app/theme/color.dart';
import 'package:food_app/utils/data.dart';
import 'package:food_app/widgets/custom_image.dart';

import 'favorite_box.dart';

class FavoriteList extends StatefulWidget {
  final List<Item> items;
  const FavoriteList({ Key? key, required this.data, this.onTap, required this.items}) : super(key: key);
  final Item  data;
  final GestureTapCallback? onTap;

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  bool fav = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImage(
              widget.data.image!,
              width: 80, height:80,
              radius: 10,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Row( children: <Widget>[ Container( width: 70.0, ), Flexible( child: Text(widget.data.name!), ) ], ),
                  Text(widget.data.name!,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 3,
                  ),
                  Text(widget.data.sources!,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      widget.data.rate_number != "" &&
                          widget.data.delivery_fee == ""
                          ? Icon(
                        Icons.timer,
                        size: 14,
                        color: primary,
                      )
                          : widget.data.rate_number == "" &&
                          widget.data.delivery_fee != ""
                          ? Icon(
                        Icons.people,
                        size: 14,
                        color: primary,
                      )
                          : Icon(
                        Icons.abc,
                        size: 14,
                        color: primary,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      widget.data.rate_number != "" &&
                          widget.data.delivery_fee == ""
                          ? Text("(" + widget.data.rate_number! + ")",
                          style:
                          TextStyle(fontSize: 13, color: Colors.indigo))
                          : widget.data.rate_number == "" &&
                          widget.data.delivery_fee != ""
                          ? Text("(" + widget.data.delivery_fee! + ")",
                          style: TextStyle(
                              fontSize: 13, color: Colors.indigo))
                          : Text("",
                          style: TextStyle(
                              fontSize: 13, color: Colors.indigo)),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Text(widget.data.price!,  maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: primary)),
                SizedBox(height: 10,),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: primary,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.shopping_cart,size: 18,)
                ),
               /* FavoriteBox(
                  iconSize: 18,
                  isFavorited: widget.data.is_favorited!,
                  onTap: (){



                    setState(() {
                      widget.data.is_favorited == true ;
                      Item item = new Item(
                        delivery_fee: widget.data.delivery_fee!,
                        image: widget.data.image,
                        description: widget.data.description!,
                        is_favorited: fav,
                        name: widget.data.name!,
                        price: widget.data.price!,
                        rate: widget.data.rate!,
                        rate_number: widget.data.rate_number!,
                        sources: widget.data.sources!,
                      );
                      print("before :");
                      print(widget.data.is_favorited!);
                      widget.items.add(item);
                      print("Items Sending :");
                      print(widget.items);
                    });
                  },
                )*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
