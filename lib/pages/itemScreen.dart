import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/model/iteem.dart';
import 'package:food_app/theme/color.dart';
import 'package:food_app/utils/data.dart';
import 'package:food_app/widgets/category_item.dart';
import 'package:food_app/widgets/custom_textbox.dart';
import 'package:food_app/widgets/feature_item.dart';
import 'package:food_app/widgets/feature_item_rest.dart';
import 'package:food_app/widgets/feature_item_room_services.dart';
import 'package:food_app/widgets/feature_item_spa.dart';
import 'package:food_app/widgets/notification_box.dart';
import 'package:food_app/widgets/popular_item.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemScreen extends StatefulWidget {
  final List<Item> items;
  const ItemScreen({Key? key, required this.items}) : super(key: key);

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  TextEditingController _search = new TextEditingController();
  bool favorite = false;



  List<Item>? data = [];
  List<Item>? dataSpa = [];
  List<Item>? dataRest = [];
  List<Item>? dataRoomServices = [];
  List<Item>? allMenuForSearched = [];
  bool seletedRest = false;
  bool selectedAll = true;
  bool seletedSpa = false;
  bool seletedRoomService = false;
  String menuSelectedName = "";

  @override
  void initState() {
    // TODO: implement initState
    //allMenuForSearched = [...spa, ...rest];
    seletedSpa = false;
    seletedRoomService = false;
    seletedRest = true;
    menuSelectedName = "Menu Restaurant Bleu";
    super.initState();
  }

  List<Item>? searchedList = [];
  List<Item>? searchedListBySources = [];
  List<Item>? searchedListByName = [];
  void searchInList(String value)  {
    seletedSpa = false;
    seletedRoomService = false;
    seletedRest = false;
    selectedAll = true;
    searchedListByName = allMenuForSearched!
        .where((element) => element.name!.contains(value))
        .toList();
    searchedListBySources = allMenuForSearched!
        .where((element) => element.sources!.contains(value))
        .toList();
    searchedList = [...searchedListBySources!, ...searchedListByName!];
    data!.clear();
    data = [...searchedList!];
    setState(() {
      menuSelectedName = "All Menu";
      //data!.clear();

      //data!.addAll(searchedList!);
    });
  }

  @override
  Widget build(BuildContext context) {
    searchedList = List.from(allMenuForSearched!);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: getBody(),
    );
  }

  getBody() {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Al Maaden Menu",
                  style: GoogleFonts.lobster(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      wordSpacing: 5,
                      letterSpacing: 5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  "assets/images/logo.svg",
                  width: 60,
                  height: 60,
                  color: primary,
                ),
              )
            ],
          ),
          /*Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Text("Al Maaden Menu", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
              ),*/
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Trouvez vos achats",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: CustomTextBox(
                  onChange: (value) =>  searchInList(value),
                  controller: _search,
                  hint: "Search",
                  prefix: Icon(Icons.search, color: darker),
                  suffix: Icon(Icons.filter_list_outlined, color: primary))),
          SizedBox(
            height: 25,
          ),

          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 9,
                  ),
              /*    GestureDetector(
                    onTap: () {
                      seletedSpa = false;
                      seletedRoomService = false;
                      seletedRest = false;
                      selectedAll = true;
                      setState(() {
                        //data!.clear();
                        data!.addAll(allMenu);
                        dataSpa!.clear();
                        dataRest!.clear();
                        dataRoomServices!.clear();
                        menuSelectedName = "All Menu";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: selectedAll ? primary : cardColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: shadowColor.withOpacity(0.05),
                            spreadRadius: .5,
                            blurRadius: .5,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.th,
                              size: 17,
                              color: selectedAll ? Colors.white : darker),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "All Menu",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13,
                                color: selectedAll ? Colors.white : darker),
                          ),
                        ],
                      ),
                    ),
                  ),*/
                  GestureDetector(
                    onTap: () {
                      seletedSpa = false;
                      seletedRest = false;
                      seletedRoomService = true;
                      setState((){
                        menuSelectedName = "Menu Room Service";
                      });
                      /*  seletedSpa = false;
                      seletedRest = false;
                      seletedRoomService = true;
                      selectedAll = false;
                      setState(() {
                        *//*data!.clear();
                        data!.addAll(roomServices);
                        print("***** Debug Probleme **********");
                        print(data);
                        print("***** Debug Probleme **********");*//*
                        dataRest!.clear();
                        data!.clear();
                        dataSpa!.clear();
                        dataRoomServices!.addAll(roomServices);
                        print("********* Hadi Button Menu Spa");
                        print("********* Data ***************");
                        print(data);
                        print(data!.length);
                        print("********* Data Spa***************");
                        print(dataSpa);
                        print(dataSpa!.length);
                        print("********* Data Rest ***************");
                        print(dataRest);
                        print(dataRest!.length);
                        print("********* Data Room Service ***************");
                        print(dataRoomServices);
                        print(dataRoomServices!.length);
                        print("********* End ***************");
                        menuSelectedName = "Menu Room Service";
                      });*/
                    },
                    child: Container(
                      width: 152,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: seletedRoomService ? primary : cardColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: shadowColor.withOpacity(0.05),
                            spreadRadius: .5,
                            blurRadius: .5,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.restroom,
                              size: 17,
                              color:
                              seletedRoomService ? Colors.white : darker),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Room service",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13,
                                color:
                                seletedRoomService ? Colors.white : darker),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {

                      setState(() {
         /*               dataRest!.addAll(rest);
                        data!.clear();
                        dataSpa!.clear();
                        dataRoomServices!.clear();*/
                        seletedSpa = false;
                        seletedRest = true;
                        seletedRoomService = false;
                        menuSelectedName = "Menu Restaurant Bleu";
                      });
                    },
                    child: Container(
                      width: 152,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: seletedRest ? primary : cardColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: shadowColor.withOpacity(0.05),
                            spreadRadius: .5,
                            blurRadius: .5,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.hamburger,
                              size: 17,
                              color: seletedRest ? Colors.white : darker),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Restaurant Bleu",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13,
                                color: seletedRest ? Colors.white : darker),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      seletedSpa = true;
                      seletedRest = false;
                      seletedRoomService = false;
                      setState((){
                        menuSelectedName = "Menu Spa";
                      });
                     /* seletedSpa = true;
                      seletedRoomService = false;
                      seletedRest = false;
                      selectedAll = false;
                      setState(() {
                        *//*data!.clear();
                        data!.addAll(spa);*//*
                        dataSpa!.addAll(spa);
                        data!.clear();
                        dataRest!.clear();
                        dataRoomServices!.clear();
                        print("********* Hadi Button Menu Spa");
                        print("********* Data ***************");
                        print(data);
                        print(data!.length);
                        print("********* Data Spa***************");
                        print(dataSpa);
                        print(dataSpa!.length);
                        print("********* Data Rest ***************");
                        print(dataRest);
                        print(dataRest!.length);
                        print("********* Data Room Service ***************");
                        print(dataRoomServices);
                        print(dataRoomServices!.length);
                        print("********* End ***************");
                        menuSelectedName = "Menu Spa";
                      });*/
                    },
                    child: Container(
                      width: 152,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: seletedSpa ? primary : cardColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: shadowColor.withOpacity(0.05),
                            spreadRadius: .5,
                            blurRadius: .5,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.spa,
                              size: 17,
                              color: seletedSpa ? Colors.white : darker),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Spa Card",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13,
                                color: seletedSpa ? Colors.white : darker),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              menuSelectedName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: (seletedSpa  && !seletedRest  && !seletedRoomService ) ? listFeaturedSpa()
                      : (!seletedSpa  && seletedRest  && !seletedRoomService ) ? listFeaturedRest()
                  : (!seletedSpa  && !seletedRest  && seletedRoomService )? listFeaturedRoomServices() : listFeaturedRoomServices()
              ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  listCategories() {
    List<Widget> lists = List.generate(
      categories.length,
      (index) => CategoryItem(
        data: categories[index],
        seleted: true,
      ),
    );
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(bottom: 5, left: 15),
      child: Row(children: lists),
    );
  }

  ScrollController _scrollController = new ScrollController(
    initialScrollOffset: 0.0,
    keepScrollOffset: true,
  );



  // La Liste Concerner
  listFeaturedSpa() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: _scrollController,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: List.generate(
          spa!.length,
              (index) => FeaturedItemSpa(items: widget.items, data: spa![index]),
        ),
      ),
    );
  }

  // La Liste Concerner
  listFeaturedRoomServices() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: _scrollController,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: List.generate(
          roomServices!.length,
              (index) => FeaturedItemRoomServices(items: widget.items, data: roomServices![index]),
        ),
      ),
    );
  }


  // La Liste Concerner
  listFeaturedRest() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: _scrollController,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: List.generate(
          rest!.length,
              (index) => FeaturedItemRest(items: widget.items, data: rest![index]))));
  }}