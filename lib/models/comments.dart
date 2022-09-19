class Comments {
  Comments({required this.id, required this.comment, required this.time});

  final int id;
  final String comment;
  final DateTime time;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['comment'] = comment;
    _data['time'] = time.toString();

    return _data;
  }
}
