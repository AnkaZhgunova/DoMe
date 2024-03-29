import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

class Transformer {
  // ignore: strict_raw_type
  static StreamTransformer transformer<T>(
    T Function(Map<String, dynamic> json) fromJson,
  ) =>
      StreamTransformer<QuerySnapshot, List<T>>.fromHandlers(
        handleData: (QuerySnapshot data, EventSink<List<T>> sink) {
          final snaps = data.docs.map((doc) => doc.data()).toList();
          final objects = snaps.map((json) => fromJson(json as Map<String, dynamic>)).toList();

          sink.add(objects);
        },
      );
}
