enum ReviewPeriod {
  yearly,
  sixMonths,
  threeMonths,
  oneMonth,
  tenDays,
  sevenDays,
}

class StorageReviewSettings {
  bool is7DaysEnabled;
  bool is10DaysEnabled;
  bool is1MonthEnabled;
  bool is3MonthsEnabled;
  bool is6MonthsEnabled;
  bool isYearlyEnabled;

  StorageReviewSettings({
    required this.is7DaysEnabled,
    required this.is10DaysEnabled,
    required this.is1MonthEnabled,
    required this.is3MonthsEnabled,
    required this.is6MonthsEnabled,
    required this.isYearlyEnabled,
  });

  factory StorageReviewSettings.fromJson(Map<String, dynamic> json) {
    return StorageReviewSettings(
      is7DaysEnabled: json['is7DaysEnabled'],
      is10DaysEnabled: json['is10DaysEnabled'],
      is1MonthEnabled: json['is1MonthEnabled'],
      is3MonthsEnabled: json['is3MonthsEnabled'],
      is6MonthsEnabled: json['is6MonthsEnabled'],
      isYearlyEnabled: json['isYearlyEnabled'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json["is7DaysEnabled"] = is7DaysEnabled;
    json["is10DaysEnabled"] = is10DaysEnabled;
    json["is1MonthEnabled"] = is1MonthEnabled;
    json["is3MonthsEnabled"] = is3MonthsEnabled;
    json["is6MonthsEnabled"] = is6MonthsEnabled;
    json["isYearlyEnabled"] = isYearlyEnabled;
    return json;
  }
}
