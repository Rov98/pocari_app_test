class Web_domain {
  final String? alphaTwoCode;
  final String? name;
  final String? country;

  Web_domain(
      {required this.alphaTwoCode, required this.name, required this.country});

  factory Web_domain.fromJson(Map<String, dynamic> json) {
    return Web_domain(
        alphaTwoCode: json['alphaTwoCode'],
        name: json['name'],
        country: json['country']);
  }
}
