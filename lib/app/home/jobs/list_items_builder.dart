// reusable list builder widget to handle all the different states
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/home/jobs/empty_content.dart';

typedef ItemWidgetBuilder<T> = Widget Function(BuildContext context, T item);

class ListItemsBuilder<T> extends StatelessWidget {
  const ListItemsBuilder({Key key, @required this.snapshot, @required this.itemBuilder})
      : super(key: key);
  final AsyncSnapshot<List<T>> snapshot;
  final ItemWidgetBuilder<T> itemBuilder;

  @override
  Widget build(BuildContext context) {
    //handle the differing types of UI dependant upon what is in the snapshot
    if(snapshot.hasData) {
      final List<T> items = snapshot.data;
      if (items.isNotEmpty) {
        // handle the normal state (jobs in the list)
        return _buildList(items);
        //handle the empty state(no jobs in the list)
      } else {
        return EmptyContent();
      }
      // handle the error state
    } else if (snapshot.hasError) {
      return EmptyContent(
        title: 'Something went wrong',
        message: 'Unable to load jobs at the moment',
      );
    }
    //handle the loading state
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  // method to build the jobs list
  Widget _buildList(List<T> items) {
    return ListView.separated(
      itemCount: items.length + 2,
      separatorBuilder: (context, index) => Divider(height: 0.5),
      itemBuilder: (context, index) {
        if (index == 0 || index == items.length + 1) {
          return Container();
        }
       return itemBuilder(context, items[index - 1]);

  },
    );
  }
}
