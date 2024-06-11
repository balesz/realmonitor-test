import 'dart:convert';

Request requestFromJson(String str) => Request.fromJson(json.decode(str));

String requestToJson(Request data) => json.encode(data.toJson());

class Request {
  int from;
  int size;
  List<Sort> sort;
  List<dynamic> exclude;
  List<Search> search;

  Request({
    required this.from,
    required this.size,
    required this.sort,
    required this.exclude,
    required this.search,
  });

  factory Request.fromJson(Map<String, dynamic> json) => Request(
        from: json["from"],
        size: json["size"],
        sort: List<Sort>.from(json["sort"].map((x) => Sort.fromJson(x))),
        exclude: List<dynamic>.from(json["exclude"].map((x) => x)),
        search: List<Search>.from(json["search"].map((x) => Search.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "from": from,
        "size": size,
        "sort": List<dynamic>.from(sort.map((x) => x.toJson())),
        "exclude": List<dynamic>.from(exclude.map((x) => x)),
        "search": List<dynamic>.from(search.map((x) => x.toJson())),
      };
}

class Search {
  String status;
  List<String> estate;
  List<Place> places;
  Tags tags;
  bool hasImages;
  Floor priceDrop;
  Floor unitPrice;
  LotSize size;
  String description;
  Floor floor;
  Floor room;
  LotSize lotSize;
  Heating heating;
  LotSize price;

  Search({
    required this.status,
    required this.estate,
    required this.places,
    required this.tags,
    required this.hasImages,
    required this.priceDrop,
    required this.unitPrice,
    required this.size,
    required this.description,
    required this.floor,
    required this.room,
    required this.lotSize,
    required this.heating,
    required this.price,
  });

  factory Search.fromJson(Map<String, dynamic> json) => Search(
        status: json["status"],
        estate: List<String>.from(json["estate"].map((x) => x)),
        places: List<Place>.from(json["places"].map((x) => Place.fromJson(x))),
        tags: Tags.fromJson(json["tags"]),
        hasImages: json["hasImages"],
        priceDrop: Floor.fromJson(json["priceDrop"]),
        unitPrice: Floor.fromJson(json["unitPrice"]),
        size: LotSize.fromJson(json["size"]),
        description: json["description"],
        floor: Floor.fromJson(json["floor"]),
        room: Floor.fromJson(json["room"]),
        lotSize: LotSize.fromJson(json["lotSize"]),
        heating: Heating.fromJson(json["heating"]),
        price: LotSize.fromJson(json["price"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "estate": List<dynamic>.from(estate.map((x) => x)),
        "places": List<dynamic>.from(places.map((x) => x.toJson())),
        "tags": tags.toJson(),
        "hasImages": hasImages,
        "priceDrop": priceDrop.toJson(),
        "unitPrice": unitPrice.toJson(),
        "size": size.toJson(),
        "description": description,
        "floor": floor.toJson(),
        "room": room.toJson(),
        "lotSize": lotSize.toJson(),
        "heating": heating.toJson(),
        "price": price.toJson(),
      };
}

class Floor {
  Floor();

  factory Floor.fromJson(Map<String, dynamic> json) => Floor();

  Map<String, dynamic> toJson() => {};
}

class Heating {
  List<dynamic> energySource;

  Heating({
    required this.energySource,
  });

  factory Heating.fromJson(Map<String, dynamic> json) => Heating(
        energySource: List<dynamic>.from(json["energySource"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "energySource": List<dynamic>.from(energySource.map((x) => x)),
      };
}

class LotSize {
  int min;

  LotSize({
    required this.min,
  });

  factory LotSize.fromJson(Map<String, dynamic> json) => LotSize(
        min: json["min"],
      );

  Map<String, dynamic> toJson() => {
        "min": min,
      };
}

class Place {
  String id;

  Place({
    required this.id,
  });

  factory Place.fromJson(Map<String, dynamic> json) => Place(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}

class Tags {
  List<String> include;

  Tags({
    required this.include,
  });

  factory Tags.fromJson(Map<String, dynamic> json) => Tags(
        include: List<String>.from(json["include"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "include": List<dynamic>.from(include.map((x) => x)),
      };
}

class Sort {
  Price price;

  Sort({
    required this.price,
  });

  factory Sort.fromJson(Map<String, dynamic> json) => Sort(
        price: Price.fromJson(json["price"]),
      );

  Map<String, dynamic> toJson() => {
        "price": price.toJson(),
      };
}

class Price {
  String order;

  Price({
    required this.order,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "order": order,
      };
}
