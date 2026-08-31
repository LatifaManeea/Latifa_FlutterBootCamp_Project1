
// WHY: using a model instead of raw Maps everywhere means?
// 1- typos in field names become compile-time errors instead of silent runtime nulls.
// 2- autocomplete works (place.name instead of place["name"]).
// 3- it mirrors how real apps consume JSON from an API.

class PlaceModel {
  final String name;
  final String image;
  final String description;
  final String bestTime;
  final String category;
  final List<String> highlights;
 
  PlaceModel({
    required this.name,
    required this.image,
    required this.description,
    required this.bestTime,
    required this.category,
    required this.highlights,
  });
 
  // Factory constructor: takes a raw JSON object (Map<String, dynamic>) and returns a fully-typed PlaceModel.

  factory PlaceModel.fromJson(Map<String, dynamic> json) {
    return PlaceModel(
      // ?? means if not given a value , give it the value ""
      name: json["name"] ?? "",
      image: json["image"] ?? "",
      description: json["description"] ?? "",
      bestTime: json["bestTime"] ?? "",
      category: json["category"] ?? "",
      highlights: List<String>.from(json["highlights"] ?? []),
    );
  }
}
 