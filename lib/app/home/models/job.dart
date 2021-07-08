import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Job {
  Job({@required this.id, @required this.name, @required this.ratePerHour});
  final String id;
  final String name;
  final int ratePerHour;

  factory Job.fromMap(Map<String, dynamic> data, String documentId) {
    if (data == null ) {
      return null;
  }
    final String name = data['name'];
    if(name == null) {
      return null;
    }
    final int ratePerHour = data['ratePerHour'];
    return Job(
      id: documentId,
      name: name,
      ratePerHour: ratePerHour
    );
  }

  //method to convert objects name and raterPerHour into a map of key value pairs
  // and write a job to Firestore

  Map<String, dynamic> toMap() {
    return {
      'name' : name,
      'ratePerHour': ratePerHour,
    };
  }
/*
  @override
  int get hashCode => hashValues(id, name, ratePerHour);

  @override
  bool operator ==(other) {
    //check if the two references are the same object in memory
    if (identical(this, other)) return true;
    // check if the other object is of the same type as the current one
    if (runtimeType != other.runtimeType) return false;
    // The other object is of type job
    final Job otherJob = other;
    return id == otherJob.id &&
        name == otherJob.name &&
        ratePerHour == otherJob.ratePerHour;

  }

 */
}