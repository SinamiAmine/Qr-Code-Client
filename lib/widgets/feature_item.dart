import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_app/model/iteem.dart';
import 'package:food_app/theme/color.dart';
import 'package:food_app/utils/data.dart';
import 'package:food_app/widgets/custom_image.dart';

import 'favorite_box.dart';

class FeaturedItem extends StatefulWidget {
  // List Favourite
  final List<Item> items;

  final Item data;

  const FeaturedItem(
      {Key? key, this.onTap, required this.items, required this.data})
      : super(key: key);
  final GestureTapCallback? onTap;

  @override
  State<FeaturedItem> createState() => _FeaturedItemState();
}

class _FeaturedItemState extends State<FeaturedItem> {
  List<Item> roomServices = [
    Item(
        image: "assets/images/menurest.jpg",
        is_favorited: false,
        price: "95 Dh",
        name: "Salade César au choix ;Poulet ",
        description: "Caesar salad of your choice served with anchovies’ cream",
        sources: "Caesar salad of your choice served with anchovies’ cream",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/menurest.jpg",
        is_favorited: false,
        price: "120 Dh",
        name: "Salade quinoa aux petits condiments ; avocat, gambas",
        description: "Quinoa salad served with avocado & prawns",
        sources: "Quinoa salad served with avocado & prawns",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/menurest.jpg",
        is_favorited: true,
        price: "130 Dh",
        name: "Salade pêcheur aux avocats et agrumes (crevettes roses, gambas, calamars,",
        description: "Fisherman salad served with avocado & citrus (shrimps, prawns, squid)",
        sources: "Fisherman salad served with avocado & citrus (shrimps, prawns, squid)",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/menurest.jpg",
        is_favorited: true,
        price: "85 Dh",
        name: "Salade tomate & Mozzarella di buffala",
        description: "Menthe,Sodacitron vert,sucre de canne",
        sources: "Tomatoes & Mozzarella di buffalo salad",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/menurest.jpg",
        is_favorited: false,
        price: "80 Dh",
        name: "Assortiment de salades Marocaines et briouates maison",
        description: "jus de citron,Eau gazeuse",
        sources: "Assortment of Moroccan salads & savory puff pastries “Briouates”",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/menurest.jpg",
        is_favorited: false,
        price: "90 Dh",
        name: "Pastilla de poulet & amandes ",
        description: "jus de citron,Eau gazeuse",
        sources: "Chicken & almond pastilla",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
  ];
  bool fav = false;
  bool favSpa = false;
  bool favRoomService = false;
  bool favRest = false;
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
    }
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
              width: 80,
              height: 80,
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
                Text(widget.data.price!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: primary)),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    setState(() {
                      if (this.fav == false) {
                        this.fav = true;
                        widget.items.add(Item(
                          delivery_fee: widget.data.delivery_fee,
                          image: widget.data.image,
                          description: widget.data.description,
                          is_favorited: true,
                          name: widget.data.name,
                          price: widget.data.price,
                          rate: widget.data.rate,
                          rate_number: widget.data.rate_number,
                          sources: widget.data.sources,
                        ));

                      } else {
                        this.fav = false;
                        widget.items.removeWhere(
                            (item) => item.name == widget.data.name);
                      }

                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration:
                        BoxDecoration(color: primary, shape: BoxShape.circle),
                    child: Icon(
                        fav
                            ? Icons.favorite_rounded
                            : (!fav)
                                ? Icons.favorite_outline_rounded
                                : fav == null
                                    ? Icons.favorite_outline_rounded
                                    : Icons.favorite_outline_rounded,
                        size: 18,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
