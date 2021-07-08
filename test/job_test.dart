//Model class test for Job class (job.dart)

import 'package:flutter_test/flutter_test.dart';
import 'package:time_tracker_flutter_course/app/home/models/job.dart';

void main() {
    group('fromMap', () {
      // Test to check if we return null when we get a null data argument
      test('null data', () {
        final job = Job.fromMap(null, 'abc');
        expect(job, null);
      });
    // Test whether values of name and rateperhour are set when a new job is created
      test('job with all properties', () {
          final job = Job.fromMap({
            'name': 'Blogging',
            'rateperhour': 10,
          }, 'abc');
          expect(job.name, 'Blogging');
          expect(job.ratePerHour, 10);
          expect(job.id, 'abc');
      });


  });
}

