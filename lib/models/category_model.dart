class CategoryModel {
  final int id;
  final String name;

  CategoryModel({
    required this.id,
    required this.name,
  });
}

List<CategoryModel> demoCategories = [
  CategoryModel(
    id: 1,
    name: 'Laptop',
  ),
  CategoryModel(
    id: 2,
    name: 'Speaker',
  ),
  CategoryModel(
    id: 3,
    name: 'Headphones',
  ),
  CategoryModel(
    id: 4,
    name: 'Ac',
  ),
  CategoryModel(
    id: 5,
    name: 'Mobile',
  ),
];
