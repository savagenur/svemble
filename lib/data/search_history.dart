import 'package:svemble/data/products.dart';

import '../models/product.dart';

final List<String> allSearchHistory = [
  "обувь",
  "наушники",
  "Шуба",
  "электроприбор",
  "Клавиатура",
  "Боксер",
  "туфли",

];
final List<String> allSuggestions = [
  "обувь",
  "наушники",
  "Шуба",
  "электроприбор",
  "Клавиатура",
  "Боксер",
  "туфли",
  ...allProducts.map((e) => e.title).toList(),

];
