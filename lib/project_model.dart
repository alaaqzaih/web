import 'package:flutter/material.dart';

enum Priority {
  Low,
  Medium,
  High,
}

class Project {
  String assigned;
  String name;
  String cat;
  String address;

  Priority priority;
  double budget;
  String position;
  Color color;

  Project(
      {required this.assigned,
      required this.name,
      required this.cat,
      required this.address,
      required this.priority,
      required this.budget,
      required this.position,
      required this.color});
}

List<Project> projectItems = [
  Project(
      assigned: 'Sunil Joshi',
      name: 'Elite Admin',
      cat: 'cleaning',
      address: 'nablus',
      priority: Priority.Low,
      position: 'Web Designer',
      budget: 3.9,
      color: Colors.yellow),
  Project(
      assigned: 'Sunil Joshi',
      name: 'Elite Admin',
      cat: 'cleaning',
      address: 'nablus',
      priority: Priority.Low,
      position: 'Web Designer',
      budget: 3.9,
      color: Colors.yellow),
  Project(
      assigned: 'Sunil Joshi',
      name: 'Elite Admin',
      cat: 'cleaning',
      address: 'nablus',
      priority: Priority.Low,
      position: 'Web Designer',
      budget: 3.9,
      color: Colors.yellow),
  Project(
      assigned: 'Sunil Joshi',
      name: 'Elite Admin',
      cat: 'cleaning',
      address: 'nablus',
      priority: Priority.High,
      position: 'Web Designer',
      budget: 3.9,
      color: Colors.red),
  Project(
      assigned: 'Sunil Joshi',
      name: 'Elite Admin',
      cat: 'cleaning',
      address: 'nablus',
      priority: Priority.Low,
      position: 'Web Designer',
      budget: 3.9,
      color: Colors.yellow),
];
