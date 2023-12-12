import 'dart:convert';

// 1. collectionSalePrice 가 null 일때 처리 해줘야됨
// 2. price, cvtDatetime에 대하여 명확한? 타입 표시가 필요함
void main() {
  CollectionSalePrice salePrice1 = CollectionSalePrice(
    price: 59.75,
    cvtDatetime: "2023-03-26T08:08:35",
  );

  CollectionSalePrice salePrice2 = CollectionSalePrice(
    price: 60.00,
    cvtDatetime: "2023-03-26T08:08:45",
  );

  CollectionChartDataList chartData1 = CollectionChartDataList(
    collectionName: "collectionName",
    collectionSalePrice: null,
  );

  CollectionChartDataList chartData2 = CollectionChartDataList(
    collectionName: "collectionName",
    collectionSalePrice: [salePrice1, salePrice2],
  );

  Map<String, dynamic> jsonData = {
    'collectionChartDataList': [chartData1.toJson(), chartData2.toJson()],
  };

  // print(chartData1.collectionName);
  // print(chartData1.collectionSalePrice?.first.cvtDatetime);
  print(salePrice1.toJson());
  print(salePrice2.toJson());
  print(chartData1.toJson());
  print(jsonEncode(chartData2.toJson()));
  print(jsonEncode(jsonData));


}

class CollectionChartDataList {
  final String collectionName;
  final List<CollectionSalePrice>? collectionSalePrice;

  Map<String, dynamic> toJson() {
    return {
      'collectionName': collectionName,
      'collectionSalePrice':
          collectionSalePrice?.map((e) => e.toJson()).toList(),
    };
  }

  CollectionChartDataList.fromJson(Map<String, dynamic> json)
      : collectionName = json['collectionName'],
        collectionSalePrice = json['collectionSalePrice'];

  const CollectionChartDataList({
    required this.collectionName,
    required this.collectionSalePrice,
  });
}

class CollectionSalePrice {
  final double price;
  final String cvtDatetime;

  const CollectionSalePrice({
    required this.price,
    required this.cvtDatetime,
  });

  Map<String, dynamic> toJson() {
    return {
      'price': price,
      'cvtDatetime': cvtDatetime,
    };
  }

  CollectionSalePrice.fromJson(Map<String, dynamic> json)
      : price = json['price'],
        cvtDatetime = json['cvtDatetime'];
}
