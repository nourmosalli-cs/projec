//شغلات اللتي سوف تستقبلها من api
class Weather {
  final int id;
  final String cityname;
  final String main;
  final String description;
  final int pressure;

  Weather(
      {required this.id,
      required this.cityname,
      required this.main,
      required this.description,
      required this.pressure});
}
