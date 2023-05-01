class Urls{
  static const String baseUrl = 'https://api.npoint.io/30bd2c680d812dd23df1';
  static const String productSliderUrl = '$baseUrl/ListProductSlider';
  static const String productCategoryUrl = '$baseUrl/CategoryList';
  static String productByRemarksUrl(String remarks) =>
      '$baseUrl/ListProductByRemark/$remarks';

  static String productByCategoryUrl(String categoryId) =>
      '$baseUrl/ListProductByCategory/$categoryId';

  static String productDetailsByIdUrl(int productId) =>
      '$baseUrl/ProductDetailsById/$productId';
}