import 'package:flutter/foundation.dart';

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String description;
  final List<String> steps;
  final List<String> trainersImgUrl;
  final List<String> trainersName;
  final List<String> trainersGender;
  final List<String> timings;
  final List<String> membership;
  final List<String> membershipPlans;
  final String duration;
  final String affordability;
  final List<String> amenitiesImageUrl;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.description,
    @required this.steps,
    @required this.trainersImgUrl,
    @required this.trainersName,
    @required this.trainersGender,
    @required this.timings,
    @required this.membership,
    @required this.membershipPlans,
    @required this.duration,
    @required this.affordability,
    @required this.amenitiesImageUrl,
  });
}
