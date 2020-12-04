import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:infinity_scrolling/data/timeline_controller.dart';
import 'package:provider/provider.dart';
import 'package:visibility_detector/visibility_detector.dart';

class InSightPattern extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<TimelineController, TimelineState>(
          create: (context) => TimelineController(),
        ),
      ],
      child: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("In Sight Pattern"),
      ),
      body: RefreshIndicator(
        onRefresh: context.watch<TimelineController>().refresh,
        child: Builder(
          builder: (context) {
            final items = context.select((TimelineState state) => state.items);
            final hasNext =
                context.select((TimelineState state) => state.hasNext);
            return ListView.builder(
              itemBuilder: (context, i) {
                if (i == items.length && hasNext) {
                  return _LastIndicator(() {
                    context.read<TimelineController>().loadNext();
                  });
                }
                final item = items[i];
                return ListTile(title: Text(item.content));
              },
              itemCount: items.length + 1,
            );
          },
        ),
      ),
    );
  }
}

class _LastIndicator extends StatelessWidget {
  final VoidCallback onVisible;
  _LastIndicator(this.onVisible);
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key("for detect visibility"),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.1) {
          onVisible();
        }
      },
      child: SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
