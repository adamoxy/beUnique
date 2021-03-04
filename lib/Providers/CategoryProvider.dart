import 'dart:io';
import 'package:beunique_day1/Models/CategoryModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  List<Interest> _interests = [];

  Interest _selectedInterest;

  Interest get currentInterest => _selectedInterest;
  List<Interest> get interestsList => _interests;

  void setCountry(Interest interest) {
    _selectedInterest = interest;
    notifyListeners();
  }

  void addToMyInterests(Interest interest) {
    _interests.add(interest);
    notifyListeners();
  }
}
