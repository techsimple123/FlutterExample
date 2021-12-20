class CatalogModel {
  static List<Item> items = List.empty();
}

class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

//<editor-fold desc="Data Methods">

  const Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Item &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          desc == other.desc &&
          price == other.price &&
          color == other.color &&
          image == other.image);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;

  @override
  String toString() {
    return 'Item{' +
        ' id: $id,' +
        ' name: $name,' +
        ' desc: $desc,' +
        ' price: $price,' +
        ' color: $color,' +
        ' image: $image,' +
        '}';
  }

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    int? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'desc': this.desc,
      'price': this.price,
      'color': this.color,
      'image': this.image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as int,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

//</editor-fold>
}

// factory Item.fromMap(Map<String, dynamic> map) {
// return Item(
// id: map["id"],
// name: map["name"],
// desc: map["desc"],
// price: map["price"],
// color: map["color"],
// image: map["image"],
// );
// }
//
// toMap() => {
//   "id": id,
//   "name": name,
//   "desc": desc,
//   "price": price,
//   "color": color,
//   "image": image
// };
