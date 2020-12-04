import 'timeline_item.dart';

class TimelineRepository {
  Future<Response> fetch(NextPageToken nextPageToken) async {
    // generate stub API response
    if (!nextPageToken.hasNext) {
      return Response([], NextPageToken._noPage());
    }

    return Future.delayed(
      Duration(seconds: 1),
      () {
        final from = nextPageToken._rawToken;
        final to = from + 30;
        final items = [
          for (var i = from; i < to; i++) TimelineItem("Item No. $i"),
        ];
        return Response(items, NextPageToken._((to > 100) ? -1 : to));
      },
    );
  }
}

class Response {
  final List<TimelineItem> items;
  final NextPageToken nextPageToken;

  Response(this.items, this.nextPageToken);
}

class NextPageToken {
  final int _rawToken;

  const NextPageToken._(this._rawToken);
  const NextPageToken._noPage(): _rawToken = -1;
  const NextPageToken.initial(): _rawToken = 0;

  bool get hasNext => _rawToken >= 0;
}
