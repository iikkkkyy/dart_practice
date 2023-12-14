class Mask {
  String? addr;
  String? code;
  DateTime? createdAt;
  double? lat;
  double? lng;
  String? name;
  String? remainStat;
  DateTime? stockAt;
  String? type;

  Mask({
    this.addr,
    this.code,
    this.createdAt,
    this.lat,
    this.lng,
    this.name,
    this.remainStat,
    this.stockAt,
    this.type,
  });

  factory Mask.fromJson(Map<String, dynamic> json) {
    return Mask(
      addr: json['addr'],
      code: json['code'],
      createdAt: parseDateTime(json['created_at']),
      lat: json['lat']?.toDouble(),
      lng: json['lng']?.toDouble(),
      name: json['name'],
      remainStat: json['remain_stat'],
      stockAt: parseDateTime(json['stock_at']),
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'addr': addr,
      'code': code,
      'created_at': formatDateTime(createdAt),
      'lat': lat,
      'lng': lng,
      'name': name,
      'remain_stat': remainStat,
      'stock_at': formatDateTime(stockAt),
      'type': type,
    };
  }

  static DateTime? parseDateTime(String? dateTimeString) {
    return dateTimeString != null
        ? DateTime.parse(dateTimeString.replaceAll('/', '-'))
        : null;
  }

  static String? formatDateTime(DateTime? dateTime) {
    return dateTime != null
        ? dateTime.toIso8601String().replaceAll('T', ' ')
        : null;
  }
}
