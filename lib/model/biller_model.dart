class Biller {
  String category;
  String billerName;
  String id;

  Biller({required this.id, required this.category, required this.billerName});
}

List<Biller> billerList = [
  Biller(id: "909", category: 'Utillty', billerName: 'AKASH DTH'),
  Biller(id: "701", category: 'Utillty', billerName: 'Gass Meter Bill'),
  Biller(id: "7040", category: 'Utillty', billerName: 'Household Bill'),
  Biller(id: "2040", category: 'Education', billerName: 'GUB Frees'),
  Biller(id: "045", category: 'Utillty', billerName: 'BPDP'),
  Biller(id: "4215", category: 'Utillty', billerName: 'CTG Holding Tax'),
  Biller(id: "1300", category: 'Utillty', billerName: 'DESCO Prepaid Meter'),
  Biller(id: "1322", category: 'Utillty', billerName: 'DESCO Postpaid Meter'),
  Biller(id: "554", category: 'Shoping', billerName: 'BDFIX Ltd'),
  Biller(id: "66", category: 'Utillty', billerName: 'BDLOPR Free'),
  Biller(id: "445", category: 'Utillty', billerName: 'AKASH Internet'),
];
List adsList = ["images/ads2.jpg", "images/ads3.jpg", "images/ads4.jpg"];
