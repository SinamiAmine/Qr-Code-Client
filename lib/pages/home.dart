
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/model/iteem.dart';
import 'package:food_app/theme/color.dart';
import 'package:food_app/utils/data.dart';
import 'package:food_app/widgets/category_item.dart';
import 'package:food_app/widgets/custom_textbox.dart';
import 'package:food_app/widgets/favorite_list.dart';
import 'package:food_app/widgets/feature_item.dart';
import 'package:food_app/widgets/notification_box.dart';
import 'package:food_app/widgets/popular_item.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final List<Item> items;
  HomePage({ Key? key, required this.items}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = [];

  List<Item> roomServices = [
    Item(
        image: "assets/images/cafe.jpg",
        is_favorited: false,
        price: "25 Dh",
        name: "Boissons chaudes / hot drinks",
        description: "Boissons / Drinks",
        sources: "Cappuccino",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/cocktail.jpg",
        is_favorited: false,
        price: "40 Dh",
        name: "Cocktail vitaminé / Vitamin cocktail",
        description: "Boissons / Drinks",
        sources:
        "Verveine, citron, sucre vanille Verbena, lemon, vanilla sugar",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/snack.jpg",
        is_favorited: false,
        price: "95 Dh",
        name: "Cheeseburger,steak haché, oignons caramélisés, champignons, fromage, laitue et tomate .",
        description: "Snack menu",
        sources: "Cheeseburger, minced beef, caramelized onions, mushrooms, cheese, lettuce and tomatoes",
        delivery_fee: "",
        rate: "",
        rate_number: ""),
    Item(
        image: "assets/images/snack.jpg",
        is_favorited: false,
        price: "85 Dh",
        name: "Chicken burger, poulet pané, laitue, tomates et oignons .",
        description: "Snack menu",
        sources: "Chicken burger: breaded chicken, lettuce, tomatoes and onions",
        delivery_fee: "",
        rate: "",
        rate_number: ""),  ];
  @override
  void initState() {
    // TODO: implement initState

    if(selectedItems.length != 0){
      setState(() {
        data.clear();
        data.addAll(selectedItems);
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        backgroundColor: Colors.transparent,
        /*appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.clear_all_rounded, size: 28,))
              ),
              //NotificationBox(number: 5,)
              Image.asset("assets/images/logo.png",width: 50,height: 50,)
          ],),
        ),*/
        body: getBody(),
      );
  }

  getBody(){
    return
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Text("Al Maaden Menu", style: GoogleFonts.lobster(fontSize: 18,fontWeight: FontWeight.w700,wordSpacing: 5,letterSpacing: 5),),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/images/logo.png",width: 60,height: 60,),
              )
            ],
            ),
            /*Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text("Al Maaden Menu", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
            ),*/
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text("Trouvez vos achats", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 8,),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: CustomTextBox(
                onChange: (value){},
                  hint: "Search", prefix: Icon(Icons.search, color: darker), suffix: Icon(Icons.filter_list_outlined, color: primary))
            ),
            SizedBox(height: 25,),
        /*    Container(
              margin: EdgeInsets.only(left: 15, right:15),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",)
                )
              ),
            ),*/
           // SizedBox(height: 25,),
         /*   Container(
              margin: EdgeInsets.only(left: 0),
              child: listCategories(),
            ),*/
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Populaire", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("Voir tout", style: TextStyle(fontSize: 14, color: darker),),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              child: listPopulars(),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text("Selected Items", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: listFeatured(),
            ),
            SizedBox(height: 20,),
          ],
        ),
      );
  }

  listCategories(){
    List<Widget> lists = List.generate(categories.length, (index) => CategoryItem(data: categories[index]));
    lists.insert(
        0, CategoryItem(
      onTap: (){
      },
      data: {
        "name" : "All",
        "icon" : FontAwesomeIcons.th,
      }, 
      seleted: true,)
    );
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 5, left: 15),
        child: Row(
          children: lists
        ),
      );
  }

  listPopulars(){
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 15),
        child: Row(
          children: List.generate(roomServices.length,
            (index) => PopularItem(
                data: roomServices[index])
          ),
        ),
      );
  }

  listFeatured(){
    setState(() {
      data.clear();
      data.addAll(selectedItems);
    });
    return
      Column(
        children: List.generate(widget.items.length,
          (index) => FavoriteList(
            items: widget.items,
            onTap: (){

            },
              data: widget.items[index])
        ),
      );
  }
}