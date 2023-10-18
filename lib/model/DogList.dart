// To parse this JSON data, do
//
//     final dogList = dogListFromJson(jsonString);

class DogList {
  String? imageUrl;
  String? breed;
  List<dynamic>? subBreed;

  DogList({
    this.imageUrl,
    this.breed,
    this.subBreed
  });

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'breed': breed,
      'subBreed': subBreed,
    };
  }

  // Haritadan modeli oluşturma metodu
  factory DogList.fromMap(Map<String, dynamic> map) {
    return DogList(
      imageUrl: map['imageUrl'],
      breed: map['breed'],
      subBreed: map['subBreed'],
    );
  }
}
