import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:infinity_scrolling/data/timeline_controller.dart';
import 'package:provider/provider.dart';

class LastIndexPattern extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      StateNotifierProvider<TimelineController, TimelineState>(
        create: (context) => TimelineController(),
      ),
    ],child: _Content(),);
  }
}

class _Content extends StatelessWidget {
  const _Content({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Last Index Pattern"),
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
                if (i == items.length - 1 && hasNext) {
                  // build中にsetStateするなと怒られるやつ対策
                  Future(context.read<TimelineController>().loadNext);
                }
                final item = items[i];
                return ListTile(title: Text(item.content));
              },
              itemCount: items.length,
            );
          },
        ),
      ),
    );
  }
}
