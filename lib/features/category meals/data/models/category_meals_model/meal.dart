class Meal {
  String? strMeal;
  String? strMealThumb;
  String? idMeal;
  dynamic strArea;
  String? strCountry;

  Meal({
    this.strMeal,
    this.strMealThumb,
    this.idMeal,
    this.strArea,
    this.strCountry,
  });

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
    strMeal: json['strMeal'] as String?,
    strMealThumb: json['strMealThumb'] as String?,
    idMeal: json['idMeal'] as String?,
    strArea: json['strArea'] as dynamic,
    strCountry: json['strCountry'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'strMeal': strMeal,
    'strMealThumb': strMealThumb,
    'idMeal': idMeal,
    'strArea': strArea,
    'strCountry': strCountry,
  };
}
