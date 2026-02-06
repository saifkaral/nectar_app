class GroceryItem {
  final int id;
  final String title;
  final double price;
  final String imageUrl;

  GroceryItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
  });

  factory GroceryItem.fromJson(Map<String, dynamic> json) {
    return GroceryItem(
      id: json['id'],
      title: json['title'],
      imageUrl: json['images'],
      price: json['price'].toDouble(),
    );
  }
}
