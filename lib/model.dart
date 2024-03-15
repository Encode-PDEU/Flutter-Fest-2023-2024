class Satellite{
  late String id;
  late String country;
  late String launch_date;
  late String mass;
  late String launcher;

  Satellite({
    required this.id,
    required this.country,
    required this.launch_date,
    required this.mass,
    required this.launcher
  });

factory Satellite.fromJson(Map<String, dynamic> json) {
      return Satellite(
        id: json['id'],
        country: json['country'],
        launch_date: json['launch_date'],
        mass: json['mass'],
        launcher: json['launcher'],
      );
    }
}