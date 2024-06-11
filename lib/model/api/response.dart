import 'dart:convert';

Response responseFromJson(String str) => Response.fromJson(json.decode(str));

String responseToJson(Response data) => json.encode(data.toJson());

class Response {
  bool ok;
  Total total;
  List<Datum> data;

  Response({
    required this.ok,
    required this.total,
    required this.data,
  });

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        ok: json["ok"],
        total: Total.fromJson(json["total"]),
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "total": total.toJson(),
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int imageCount;
  List<PrivateAd> privateAds;
  String hid;
  Rooms? rooms;
  List<WebCount> webCounts;
  int createdReferenceTime;
  String? description;
  int likeCount;
  List<DatumType> type;
  int booster;
  List<String>? view;
  int? price;
  Unit sizeUnit;
  int createdTime;
  Currency currency;
  String id;
  List<Heating>? heating;
  double priceDrop;
  Unit lotUnit;
  int? unitPrice;
  List<String>? summary;
  int updatedTime;
  List<String>? orientation;
  List<String> images;
  Address? address;
  List<Capability> capabilities;
  int? built;
  int? lotSize;
  Kind kind;
  DateTime created;
  bool active;
  int adCount;
  List<String> domains;
  Permission permission;
  double unitPriceDifference;
  List<String>? structure;
  List<TagEnum> tags;
  int quality;
  List<String> ads;
  int? size;
  DateTime createdReference;
  Position position;
  int changedTime;
  DateTime updated;
  Status status;
  int advertiserCount;
  DateTime changed;
  bool liked;
  bool viewed;
  bool deleted;
  List<dynamic> userTags;
  Prices? prices;
  Namespace namespace;
  List<Adref> adrefs;
  Utilities? utilities;
  String? state;
  DateTime? privateCreated;
  int? viewCount;
  int? privateCreatedTime;
  DateTime? notified;
  int? notifiedTime;
  int? parking;
  int? floor;

  Datum({
    required this.imageCount,
    required this.privateAds,
    required this.hid,
    this.rooms,
    required this.webCounts,
    required this.createdReferenceTime,
    this.description,
    required this.likeCount,
    required this.type,
    required this.booster,
    this.view,
    this.price,
    required this.sizeUnit,
    required this.createdTime,
    required this.currency,
    required this.id,
    this.heating,
    required this.priceDrop,
    required this.lotUnit,
    this.unitPrice,
    this.summary,
    required this.updatedTime,
    this.orientation,
    required this.images,
    this.address,
    required this.capabilities,
    this.built,
    this.lotSize,
    required this.kind,
    required this.created,
    required this.active,
    required this.adCount,
    required this.domains,
    required this.permission,
    required this.unitPriceDifference,
    this.structure,
    required this.tags,
    required this.quality,
    required this.ads,
    this.size,
    required this.createdReference,
    required this.position,
    required this.changedTime,
    required this.updated,
    required this.status,
    required this.advertiserCount,
    required this.changed,
    required this.liked,
    required this.viewed,
    required this.deleted,
    required this.userTags,
    this.prices,
    required this.namespace,
    required this.adrefs,
    this.utilities,
    this.state,
    this.privateCreated,
    this.viewCount,
    this.privateCreatedTime,
    this.notified,
    this.notifiedTime,
    this.parking,
    this.floor,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        imageCount: json["imageCount"],
        privateAds: List<PrivateAd>.from(json["privateAds"].map((x) => PrivateAd.fromJson(x))),
        hid: json["hid"],
        rooms: json["rooms"] == null ? null : Rooms.fromJson(json["rooms"]),
        webCounts: List<WebCount>.from(json["webCounts"].map((x) => WebCount.fromJson(x))),
        createdReferenceTime: json["createdReferenceTime"],
        description: json["description"],
        likeCount: json["likeCount"],
        type: List<DatumType>.from(json["type"].map((x) => datumTypeValues.map[x]!)),
        booster: json["booster"],
        view: json["view"] == null ? [] : List<String>.from(json["view"]!.map((x) => x)),
        price: json["price"],
        sizeUnit: unitValues.map[json["sizeUnit"]]!,
        createdTime: json["createdTime"],
        currency: currencyValues.map[json["currency"]]!,
        id: json["id"],
        heating: json["heating"] == null ? [] : List<Heating>.from(json["heating"]!.map((x) => Heating.fromJson(x))),
        priceDrop: json["priceDrop"]?.toDouble(),
        lotUnit: unitValues.map[json["lotUnit"]]!,
        unitPrice: json["unitPrice"],
        summary: json["summary"] == null ? [] : List<String>.from(json["summary"]!.map((x) => x)),
        updatedTime: json["updatedTime"],
        orientation: json["orientation"] == null ? [] : List<String>.from(json["orientation"]!.map((x) => x)),
        images: List<String>.from(json["images"].map((x) => x)),
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        capabilities: List<Capability>.from(json["capabilities"].map((x) => capabilityValues.map[x]!)),
        built: json["built"],
        lotSize: json["lotSize"],
        kind: kindValues.map[json["kind"]]!,
        created: DateTime.parse(json["created"]),
        active: json["active"],
        adCount: json["adCount"],
        domains: List<String>.from(json["domains"].map((x) => x)),
        permission: permissionValues.map[json["permission"]]!,
        unitPriceDifference: json["unitPriceDifference"]?.toDouble(),
        structure: json["structure"] == null ? [] : List<String>.from(json["structure"]!.map((x) => x)),
        tags: List<TagEnum>.from(json["tags"].map((x) => tagEnumValues.map[x]!)),
        quality: json["quality"],
        ads: List<String>.from(json["ads"].map((x) => x)),
        size: json["size"],
        createdReference: DateTime.parse(json["createdReference"]),
        position: Position.fromJson(json["position"]),
        changedTime: json["changedTime"],
        updated: DateTime.parse(json["updated"]),
        status: statusValues.map[json["status"]]!,
        advertiserCount: json["advertiserCount"],
        changed: DateTime.parse(json["changed"]),
        liked: json["liked"],
        viewed: json["viewed"],
        deleted: json["deleted"],
        userTags: List<dynamic>.from(json["userTags"].map((x) => x)),
        prices: json["prices"] == null ? null : Prices.fromJson(json["prices"]),
        namespace: namespaceValues.map[json["namespace"]]!,
        adrefs: List<Adref>.from(json["adrefs"].map((x) => Adref.fromJson(x))),
        utilities: json["utilities"] == null ? null : Utilities.fromJson(json["utilities"]),
        state: json["state"],
        privateCreated: json["privateCreated"] == null ? null : DateTime.parse(json["privateCreated"]),
        viewCount: json["viewCount"],
        privateCreatedTime: json["privateCreatedTime"],
        notified: json["notified"] == null ? null : DateTime.parse(json["notified"]),
        notifiedTime: json["notifiedTime"],
        parking: json["parking"],
        floor: json["floor"],
      );

  Map<String, dynamic> toJson() => {
        "imageCount": imageCount,
        "privateAds": List<dynamic>.from(privateAds.map((x) => x.toJson())),
        "hid": hid,
        "rooms": rooms?.toJson(),
        "webCounts": List<dynamic>.from(webCounts.map((x) => x.toJson())),
        "createdReferenceTime": createdReferenceTime,
        "description": description,
        "likeCount": likeCount,
        "type": List<dynamic>.from(type.map((x) => datumTypeValues.reverse[x])),
        "booster": booster,
        "view": view == null ? [] : List<dynamic>.from(view!.map((x) => x)),
        "price": price,
        "sizeUnit": unitValues.reverse[sizeUnit],
        "createdTime": createdTime,
        "currency": currencyValues.reverse[currency],
        "id": id,
        "heating": heating == null ? [] : List<dynamic>.from(heating!.map((x) => x.toJson())),
        "priceDrop": priceDrop,
        "lotUnit": unitValues.reverse[lotUnit],
        "unitPrice": unitPrice,
        "summary": summary == null ? [] : List<dynamic>.from(summary!.map((x) => x)),
        "updatedTime": updatedTime,
        "orientation": orientation == null ? [] : List<dynamic>.from(orientation!.map((x) => x)),
        "images": List<dynamic>.from(images.map((x) => x)),
        "address": address?.toJson(),
        "capabilities": List<dynamic>.from(capabilities.map((x) => capabilityValues.reverse[x])),
        "built": built,
        "lotSize": lotSize,
        "kind": kindValues.reverse[kind],
        "created": created.toIso8601String(),
        "active": active,
        "adCount": adCount,
        "domains": List<dynamic>.from(domains.map((x) => x)),
        "permission": permissionValues.reverse[permission],
        "unitPriceDifference": unitPriceDifference,
        "structure": structure == null ? [] : List<dynamic>.from(structure!.map((x) => x)),
        "tags": List<dynamic>.from(tags.map((x) => tagEnumValues.reverse[x])),
        "quality": quality,
        "ads": List<dynamic>.from(ads.map((x) => x)),
        "size": size,
        "createdReference": createdReference.toIso8601String(),
        "position": position.toJson(),
        "changedTime": changedTime,
        "updated": updated.toIso8601String(),
        "status": statusValues.reverse[status],
        "advertiserCount": advertiserCount,
        "changed": changed.toIso8601String(),
        "liked": liked,
        "viewed": viewed,
        "deleted": deleted,
        "userTags": List<dynamic>.from(userTags.map((x) => x)),
        "prices": prices?.toJson(),
        "namespace": namespaceValues.reverse[namespace],
        "adrefs": List<dynamic>.from(adrefs.map((x) => x.toJson())),
        "utilities": utilities?.toJson(),
        "state": state,
        "privateCreated": privateCreated?.toIso8601String(),
        "viewCount": viewCount,
        "privateCreatedTime": privateCreatedTime,
        "notified": notified?.toIso8601String(),
        "notifiedTime": notifiedTime,
        "parking": parking,
        "floor": floor,
      };
}

class Address {
  Country country;
  City city;
  String postalcode;
  String? street;
  County county;
  String text;
  List<TagClass> tags;
  String? neighbourhood;
  String? building;

  Address({
    required this.country,
    required this.city,
    required this.postalcode,
    this.street,
    required this.county,
    required this.text,
    required this.tags,
    this.neighbourhood,
    this.building,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        country: countryValues.map[json["country"]]!,
        city: cityValues.map[json["city"]]!,
        postalcode: json["postalcode"],
        street: json["street"],
        county: countyValues.map[json["county"]]!,
        text: json["text"],
        tags: List<TagClass>.from(json["tags"].map((x) => TagClass.fromJson(x))),
        neighbourhood: json["neighbourhood"],
        building: json["building"],
      );

  Map<String, dynamic> toJson() => {
        "country": countryValues.reverse[country],
        "city": cityValues.reverse[city],
        "postalcode": postalcode,
        "street": street,
        "county": countyValues.reverse[county],
        "text": text,
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "neighbourhood": neighbourhood,
        "building": building,
      };
}

enum City { BIATORBGY, SRKERESZTES }

final cityValues = EnumValues({"Biatorbágy": City.BIATORBGY, "Sárkeresztes": City.SRKERESZTES});

enum Country { MAGYARORSZG }

final countryValues = EnumValues({"Magyarország": Country.MAGYARORSZG});

enum County { FEJR_MEGYE, PEST_MEGYE }

final countyValues = EnumValues({"Fejér megye": County.FEJR_MEGYE, "Pest megye": County.PEST_MEGYE});

class TagClass {
  String level;
  String id;
  String value;

  TagClass({
    required this.level,
    required this.id,
    required this.value,
  });

  factory TagClass.fromJson(Map<String, dynamic> json) => TagClass(
        level: json["level"],
        id: json["id"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "level": level,
        "id": id,
        "value": value,
      };
}

class Adref {
  List<AdrefType> types;
  String id;
  String url;
  String domain;
  List<String> images;
  Permission permission;
  DateTime created;
  DateTime updated;
  int? price;

  Adref({
    required this.types,
    required this.id,
    required this.url,
    required this.domain,
    required this.images,
    required this.permission,
    required this.created,
    required this.updated,
    this.price,
  });

  factory Adref.fromJson(Map<String, dynamic> json) => Adref(
        types: List<AdrefType>.from(json["types"].map((x) => adrefTypeValues.map[x]!)),
        id: json["id"],
        url: json["url"],
        domain: json["domain"],
        images: List<String>.from(json["images"].map((x) => x)),
        permission: permissionValues.map[json["permission"]]!,
        created: DateTime.parse(json["created"]),
        updated: DateTime.parse(json["updated"]),
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "types": List<dynamic>.from(types.map((x) => adrefTypeValues.reverse[x])),
        "id": id,
        "url": url,
        "domain": domain,
        "images": List<dynamic>.from(images.map((x) => x)),
        "permission": permissionValues.reverse[permission],
        "created": created.toIso8601String(),
        "updated": updated.toIso8601String(),
        "price": price,
      };
}

enum Permission { WITHOUT_DETAILS, WITH_DETAILS }

final permissionValues = EnumValues({"WITHOUT_DETAILS": Permission.WITHOUT_DETAILS, "WITH_DETAILS": Permission.WITH_DETAILS});

enum AdrefType { CHEAPEST, MOST_INFORMATIVE, OWNER }

final adrefTypeValues = EnumValues({"CHEAPEST": AdrefType.CHEAPEST, "MOST_INFORMATIVE": AdrefType.MOST_INFORMATIVE, "OWNER": AdrefType.OWNER});

enum Capability { GENERIC_LISTING, INDIVIDUAL_ADVERTISER_LISTING }

final capabilityValues = EnumValues({"GENERIC_LISTING": Capability.GENERIC_LISTING, "INDIVIDUAL_ADVERTISER_LISTING": Capability.INDIVIDUAL_ADVERTISER_LISTING});

enum Currency { HUF }

final currencyValues = EnumValues({"HUF": Currency.HUF});

class Heating {
  String? energySource;
  String? appliance;

  Heating({
    this.energySource,
    this.appliance,
  });

  factory Heating.fromJson(Map<String, dynamic> json) => Heating(
        energySource: json["energySource"],
        appliance: json["appliance"],
      );

  Map<String, dynamic> toJson() => {
        "energySource": energySource,
        "appliance": appliance,
      };
}

enum Kind { UMBRELLA }

final kindValues = EnumValues({"UMBRELLA": Kind.UMBRELLA});

enum Unit { M2 }

final unitValues = EnumValues({"m2": Unit.M2});

enum Namespace { HU }

final namespaceValues = EnumValues({"hu": Namespace.HU});

class Position {
  double lon;
  double lat;

  Position({
    required this.lon,
    required this.lat,
  });

  factory Position.fromJson(Map<String, dynamic> json) => Position(
        lon: json["lon"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
      };
}

class Prices {
  int min;
  int max;

  Prices({
    required this.min,
    required this.max,
  });

  factory Prices.fromJson(Map<String, dynamic> json) => Prices(
        min: json["min"],
        max: json["max"],
      );

  Map<String, dynamic> toJson() => {
        "min": min,
        "max": max,
      };
}

class PrivateAd {
  String domain;
  String id;

  PrivateAd({
    required this.domain,
    required this.id,
  });

  factory PrivateAd.fromJson(Map<String, dynamic> json) => PrivateAd(
        domain: json["domain"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "domain": domain,
        "id": id,
      };
}

class Rooms {
  int all;
  int bed;
  int half;
  int bath;
  int full;

  Rooms({
    required this.all,
    required this.bed,
    required this.half,
    required this.bath,
    required this.full,
  });

  factory Rooms.fromJson(Map<String, dynamic> json) => Rooms(
        all: json["all"],
        bed: json["bed"],
        half: json["half"],
        bath: json["bath"],
        full: json["full"],
      );

  Map<String, dynamic> toJson() => {
        "all": all,
        "bed": bed,
        "half": half,
        "bath": bath,
        "full": full,
      };
}

enum Status { FOR_SALE }

final statusValues = EnumValues({"FOR_SALE": Status.FOR_SALE});

enum TagEnum { BALCONY, NEWLY_BUILT, NORMAL, PRIVATE }

final tagEnumValues = EnumValues({"balcony": TagEnum.BALCONY, "newlyBuilt": TagEnum.NEWLY_BUILT, "normal": TagEnum.NORMAL, "private": TagEnum.PRIVATE});

enum DatumType { HOUSE, HOUSE_DETACHED_HOUSE, HOUSE_TERRACED_HOUSE }

final datumTypeValues = EnumValues({"HOUSE": DatumType.HOUSE, "HOUSE_DETACHED_HOUSE": DatumType.HOUSE_DETACHED_HOUSE, "HOUSE_TERRACED_HOUSE": DatumType.HOUSE_TERRACED_HOUSE});

class Utilities {
  String sewer;
  String gas;
  String electricity;
  String water;

  Utilities({
    required this.sewer,
    required this.gas,
    required this.electricity,
    required this.water,
  });

  factory Utilities.fromJson(Map<String, dynamic> json) => Utilities(
        sewer: json["sewer"],
        gas: json["gas"],
        electricity: json["electricity"],
        water: json["water"],
      );

  Map<String, dynamic> toJson() => {
        "sewer": sewer,
        "gas": gas,
        "electricity": electricity,
        "water": water,
      };
}

class WebCount {
  int count;
  String id;

  WebCount({
    required this.count,
    required this.id,
  });

  factory WebCount.fromJson(Map<String, dynamic> json) => WebCount(
        count: json["count"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "id": id,
      };
}

class Total {
  int value;
  String relation;

  Total({
    required this.value,
    required this.relation,
  });

  factory Total.fromJson(Map<String, dynamic> json) => Total(
        value: json["value"],
        relation: json["relation"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "relation": relation,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
