/// Response models for the Phonetic Encoder API.

/// API Response wrapper.
class PhoneticResponse {
  final String status;
  final dynamic error;
  final PhoneticData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  PhoneticResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory PhoneticResponse.fromJson(Map<String, dynamic> json) => PhoneticResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? PhoneticData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Phonetic Encoder API.

class PhoneticData {
  String? word;
  String? soundex;
  String? metaphone;

  PhoneticData({
    this.word,
    this.soundex,
    this.metaphone,
  });

  factory PhoneticData.fromJson(Map<String, dynamic> json) => PhoneticData(
      word: json['word'],
      soundex: json['soundex'],
      metaphone: json['metaphone'],
    );
}

class PhoneticRequest {
  String word;
  String? algorithm;

  PhoneticRequest({
    required this.word,
    this.algorithm,
  });

  Map<String, dynamic> toJson() => {
      'word': word,
      if (algorithm != null) 'algorithm': algorithm,
    };
}
