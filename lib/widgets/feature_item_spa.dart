import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_app/model/iteem.dart';
import 'package:food_app/theme/color.dart';
import 'package:food_app/utils/data.dart';
import 'package:food_app/widgets/custom_image.dart';

import 'favorite_box.dart';

class FeaturedItemSpa extends StatefulWidget {
  // List Favourite
  final List<Item> items;

  final Item data;

  const FeaturedItemSpa(
      {Key? key, this.onTap, required this.items, required this.data})
      : super(key: key);
  final GestureTapCallback? onTap;

  @override
  State<FeaturedItemSpa> createState() => _FeaturedItemSpaState();
}

class _FeaturedItemSpaState extends State<FeaturedItemSpa> {
  List<Item> spa = [
    //SOIN DE VISAGE
    //FACIAL TREATEMENT BY BOTANIKA
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "400 Dh",
        name: "Soin hydratant confort /Facial Moisturizing Care ",
        description: "SOIN DE VISAGE",
        sources:
        "Votre peau retrouve toute sa souplesse, sa douceur et sa vitalité, grâce à ce soin nourrissant qui offre aux peaux sèches une hydratation en profondeur.",
        delivery_fee: "",
        rate: "",
        rate_number: "50 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "500 Dh",
        name: "Soin apaisant douceur /Facial alleviating care",
        description: "SOIN DE VISAGE",
        sources:
        "Idéal pour apaiser votre épiderme des agressions quotidiennes, ce soin apaise la peau, la rend plus souple, plus douce, plus fraiche.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "60 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "400 Dh",
        name: "Soin purifiant anti-brillance /purifying anti-shine care",
        description: "SOIN DE VISAGE",
        sources:
        "L’expertise d’un soin puissance 3élimine les impuretés en douceur, diminue les brillances grâce à la régénération cellulaire at adoucit l’épiderme votre peau est nette, fraiche et éclatante de sante.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "50 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "500 Dh",
        name: "Soin purifiant anti-brillance /purifying anti-shine care",
        description: "SOIN DE VISAGE",
        sources:
        "Pour un effet peau neuve, les teinte, des secrets de beauté d’orient, ce rituel de beauté purifie la peau et vous plonge dans la volupté d’un bain aux senteurs d’argan, reconnu pour ses vertus hydratantes et anti-age.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "60 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "600 Dh",
        name: "Soin anti-âge repulpant/ anti-aging & plumping care",
        description: "SOIN DE VISAGE",
        sources:
        "Pour raviver l’éclat des peaux matures, ce soin resculpte les contours du visage, réduit visiblement les rides et atténue les taches votre peau est raffermie, votre teint plus éclatant.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "75 min"),

    //MASSAGES & RITUELS CORS
    //MASSAGE RITUALS BY BOTANIKA
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "300 Dh",
        name: "Dos parfait/ perfect back",
        description: "MASSAGES & RITUELS CORS",
        sources:
        "Une détente immédiate grâce au massage dos parfait qui permet de délier les tensions concentrées au niveau du dos.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "30 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "300 Dh",
        name: "Modelage relaxant / relaxing massage",
        description: "MASSAGES & RITUELS CORS",
        sources:
        "Ce massage alterne les pressions douces et intenses, pour un pur moment de détente et de délassement.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "30 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "500 Dh",
        name: "Modelage relaxant / relaxing massage",
        description: "MASSAGES & RITUELS CORS",
        sources:
        "Ce massage alterne les pressions douces et intenses, pour un pur moment de détente et de délassement.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "50 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "400 Dh",
        name: "Réflexologie plantaire/plantar reflexology",
        description: "MASSAGES & RITUELS CORS",
        sources:
        "Ce traitement ancestral s’appuie sur la cartographie du pied, l’acupression pratiquée sur des points précis permet de soulager des maux spécifiques, de libérer les tensions nerveuses et de reposer le corps, et l’esprit.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "30 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "400 Dh",
        name: "Modelage tonifiant/ tonic body massage",
        description: "MASSAGES & RITUELS CORS",
        sources:
        "En mettant l’accent sur les zones d’accumulation du stress, ce modelage favorise la circulation énergétique, redonne tonicité et souplesse au corps",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "30 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "600 Dh",
        name: "Modelage tonifiant/ tonic body massage",
        description: "MASSAGES & RITUELS CORS",
        sources:
        "En mettant l’accent sur les zones d’accumulation du stress, ce modelage favorise la circulation énergétique, redonne tonicité et souplesse au corps",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "50 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "600 Dh",
        name: "Modelage amincissant raffermissant / slimming massage",
        description: "MASSAGES & RITUELS CORS",
        sources:
        "Modelage amincissant raffermissant par des techniques manuelles spécifiques, ce soin sur-mesure contribue à la réduction de l’effet peau d’orange et de la cellulite en agissant directement sur les tissus adipeux redonnant à la peau toute sa souplesse et son élasticité.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "60 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "600 Dh",
        name: "Message beldi/Traditional beldi massage",
        description: "MASSAGES & RITUELS CORS",
        sources:
        "Pour un véritable voyage des sens terre d’orient, ce massage relaxant aux douces senteurs d’argan vous offre un pur moment de relaxation grâce à un massage des jambes et des bras. ",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "50 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "700 Dh",
        name: "Modelage sensoriel a la bougie/ sensory candle massage",
        description: "MASSAGES & RITUELS CORS",
        sources:
        "Entre la chaleur libérée par la bougie, la volupté des senteurs et la douceur du modelage, ce massage offre une expérience sensorielle sans pareille pour un pur moment de délassement.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "60 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "800 Dh",
        name: "Massage aux pierres chaudes/Hot stones massage",
        description: "MASSAGES & RITUELS CORS",
        sources:
        "De précieuses pierres de basaltes chauffées et appliquées sur le corps diffusent une chaleur intense sur les points de tensions pour permettre une relaxation en profondeur. ",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "60 min"),

    // SIGNARURE HAMMAM
    // HAMMAM BY BOTANIKA
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "100 Dh",
        name: "Hammam simple",
        description: "SIGNARURE HAMMAM",
        sources:
        "Un moment de détente dans un bain de vapeur parfumé pour apaiser le corps et l’esprit ",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "25 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "250 Dh",
        name: "Enveloppement au ghassoul/Moroccan Rhassoul* wrap",
        description: "SIGNARURE HAMMAM",
        sources:
        "Au cœur de ce soin, le ghassoul traditionnel, reconnu pour ses vertus purifiantes et hydratantes et pour finir sur une note fraiche, ce soin offre un savonnage au romarin revitalisant. *The ghassoul is a natural clay extracted from the Atlas Mountains",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "30 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "300 Dh",
        name: "Hammam express",
        description: "SIGNARURE HAMMAM",
        sources:
        "Entre deux rendez-vous profitez d’un hammam traditionnel revisité avec gommage corporal au savon noir à l’eucalyptus et un savonnage parfume, pour un moment de detente express.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "30 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "600 Dh",
        name: "Hammam complet",
        description: "SIGNARURE HAMMAM",
        sources:
        "Offrez-vous le ventable rituel du hammam, avec bain de vapeur aromatise, un gommage traditionnel au savon noir et un masque visage et corps au ghassoul suivi d’un savonnage hyaratant a la preciouse huile d’Argan.",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "60 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "750 Dh",
        name: "Hammam royal",
        description: "SIGNARURE HAMMAM",
        sources:
        "Le prestigieux cérémonial du hammam traditionnel est une ode aux secrets de beauté arabes, orchestré pour vous offrir une expérience unique, il débute par un enveloppement de savon noir contrastant l’argan et l’eucalyptus, suivi d’un gommage douceur, d’un soin capillaire au ghassoul et se termine sur un savonnage relaxant au lait parfumé et un modelage beldi aux huiles parfumées, un pur moment d’extase !",
        delivery_fee: "",
        rate: "4.3",
        rate_number: "90 min"),

    //EPILATION
    //WAXING
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "50 Dh",
        name: "Duvet / upper lip",
        description: "EPILATION / WAXING",
        sources: "EPILATION / WAXING",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "70 Dh",
        name: "Sourcils / eyebrows",
        description: "EPILATION / WAXING",
        sources: "EPILATION / WAXING",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "160 Dh",
        name: "Visage / facial",
        description: "EPILATION / WAXING",
        sources: "EPILATION / WAXING",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "70 Dh",
        name: "Aisselles / armpits",
        description: "EPILATION / WAXING",
        sources: "EPILATION / WAXING",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "120 Dh",
        name: "Bras / arms",
        description: "EPILATION / WAXING",
        sources: "EPILATION / WAXING",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "120 Dh",
        name: "Maillot / bikini line ",
        description: "EPILATION / WAXING",
        sources: "EPILATION / WAXING",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "220 Dh",
        name: "Maillot intégral / entire bikini area",
        description: "EPILATION / WAXING",
        sources: "EPILATION / WAXING",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "100 Dh",
        name: "Demi jambes / half legs",
        description: "EPILATION / WAXING",
        sources: "EPILATION / WAXING",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "200 Dh",
        name: "Jambes complètes / whole leg",
        description: "EPILATION / WAXING",
        sources: "EPILATION / WAXING",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "260 Dh",
        name: "Dos ou torse / chest or back",
        description: "EPILATION / WAXING",
        sources: "EPILATION / WAXING",
        delivery_fee: "",
        rate: "4.3",
        rate_number: ""),

    // ESTHETIQUE
    // COSMETIC TREATEMENTS
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "250 Dh",
        name: "Manucure ",
        description: "ESTHETIQUE / COSMETIC TREATEMENTS",
        sources: "ESTHETIQUE / COSMETIC TREATEMENTS",
        delivery_fee: "",
        rate: "",
        rate_number: "45 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "300 Dh",
        name: "Manucure traditionnelle",
        description: "ESTHETIQUE / COSMETIC TREATEMENTS",
        sources: "ESTHETIQUE / COSMETIC TREATEMENTS",
        delivery_fee: "",
        rate: "",
        rate_number: "45 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "300 Dh",
        name: "Pédicure",
        description: "ESTHETIQUE / COSMETIC TREATEMENTS",
        sources: "ESTHETIQUE / COSMETIC TREATEMENTS",
        delivery_fee: "",
        rate: "",
        rate_number: "45 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "350 Dh",
        name: "Pédicure traditionnelle",
        description: "ESTHETIQUE / COSMETIC TREATEMENTS",
        sources: "ESTHETIQUE / COSMETIC TREATEMENTS",
        delivery_fee: "",
        rate: "",
        rate_number: "45 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "60 Dh",
        name: "Pose vernis / nail paiting",
        description: "ESTHETIQUE / COSMETIC TREATEMENTS",
        sources: "ESTHETIQUE / COSMETIC TREATEMENTS",
        delivery_fee: "",
        rate: "",
        rate_number: "15 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "120 Dh",
        name: "Pose french manicure / french manicure nail painting",
        description: "ESTHETIQUE / COSMETIC TREATEMENTS",
        sources: "ESTHETIQUE / COSMETIC TREATEMENTS",
        delivery_fee: "",
        rate: "",
        rate_number: "20 min"),

    //COIFFURE
    //HAIRDRESSING
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "50 Dh",
        name: "Toushing / Blow dry",
        description: "COIFFURE / HAIRDRESSING",
        sources: "COIFFURE / HAIRDRESSING",
        delivery_fee: "",
        rate: "",
        rate_number: "20 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "100 Dh",
        name: "Brushing cheveux cours / short hair brushing",
        description: "COIFFURE / HAIRDRESSING",
        sources: "COIFFURE / HAIRDRESSING",
        delivery_fee: "",
        rate: "",
        rate_number: "20 min"),
    Item(
        image: "assets/images/SpaOne.png",
        is_favorited: false,
        price: "200 Dh",
        name: "Brushing cheveux longs / long haire brushing",
        description: "COIFFURE / HAIRDRESSING",
        sources: "COIFFURE / HAIRDRESSING",
        delivery_fee: "",
        rate: "",
        rate_number: "20 min"),
  ];

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
