import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:infinity_scrolling/data/timeline_controller.dart';
import 'package:provider/provider.dart';

class ScrollPositionPattern extends StatelessWidget {
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
        title: Text("Scroll Position Pattern"),
      ),
      body: RefreshIndicator(
        onRefresh: context.watch<TimelineController>().refresh,
        child: Builder(
          builder: (context) {
            final items = context.select((TimelineState state) => state.items);
            final hasNext =
                context.select((TimelineState state) => state.hasNext);
            return _ScrollDetector(
              threshold: 0.8,
              loadNext: () {
                context.read<TimelineController>().loadNext();
              },
              builder: (context) => ListView.builder(
                controller: Provider.of<ScrollController>(
                  context,
                  listen: false,
                ),
                itemBuilder: (context, i) {
                  final item = items[i];
                  return ListTile(title: Text(item.content));
                },
                itemCount: items.length,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ScrollDetector extends StatefulWidget {
  final Widget Function(BuildContext) builder;
  final VoidCallback loadNext;
  final double threshold;

  _ScrollDetector({
    @required this.builder,
    @required this.loadNext,
    @required this.threshold,
  });

  @override
  __ScrollDetectorState createState() => __ScrollDetectorState();
}

class __ScrollDetectorState extends State<_ScrollDetector> {
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController()
      ..addListener(() {
        final scrollValue =
            _controller.offset / _controller.position.maxScrollExtent;
        if (scrollValue > widget.threshold) {
          widget.loadNext();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _controller,
      builder: (context, child) => widget.builder(context),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
