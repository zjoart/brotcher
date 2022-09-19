class ApiResponse {
  ApiResponse({required this.code, required this.description, this.data});
  final String code;
  final String description;
  final dynamic data;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['description'] = description;
    _data['data'] = data;
    return _data;
  }
}
