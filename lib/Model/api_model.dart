class api_model {
  Map<dynamic, dynamic> hii;

  api_model({
    required this.hii,
  });

  factory api_model.js({required Map data}) {
    return api_model(
      hii: data['hii'],
    );
  }
}
