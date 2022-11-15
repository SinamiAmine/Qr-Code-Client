class Item {
   String? image;

  String? get _image => image;

  set _image(String? image) {
    image = image;
  }
   bool? is_favorited;

  bool? get _is_favorited => is_favorited;

  set _is_favorited(bool? is_favorited) {
    is_favorited = is_favorited;
  }
   String? price;
   String? name;
   String? description;
   String? sources;
   String? delivery_fee;
   String? rate;
   String? rate_number;


   Item(
      {
        this.image,
         this.is_favorited, this.price, this.name,
         this.description,
         this.sources,
         this.delivery_fee,
         this.rate,
         this.rate_number,
      });


   factory Item.fromJson(Map<String?, dynamic> json) {
     return Item(
         image : json['image'],
         is_favorited : json['is_favorited'],
         price : json['price'],
        name : json['name'],
        description : json['description'],
     sources : json['sources'],
     delivery_fee : json['delivery_fee'],
     rate : json['rate'],
     rate_number : json['rate_number']);
   }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['is_favorited'] = this.is_favorited;
    data['price'] = this.price;
    data['name'] = this.name;
    data['description'] = this.description;
    data['sources'] = this.sources;
    data['delivery_fee'] = this.delivery_fee;
    data['rate'] = this.rate;
    data['rate_number'] = this.rate_number;
    return data;
  }




}
