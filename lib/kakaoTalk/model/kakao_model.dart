class KakaoChattingTileModel {
   String title;
   String subTitle;
   String time;
   String imagesUrl;

//<editor-fold desc="Data Methods">
  KakaoChattingTileModel({
    required this.title,
    required this.subTitle,
    required this.time,
    required this.imagesUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KakaoChattingTileModel &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          subTitle == other.subTitle &&
          time == other.time &&
          imagesUrl == other.imagesUrl);

  @override
  int get hashCode =>
      title.hashCode ^ subTitle.hashCode ^ time.hashCode ^ imagesUrl.hashCode;

  @override
  String toString() {
    return 'KakaoChattingTileModel{' +
        ' title: $title,' +
        ' subTitle: $subTitle,' +
        ' time: $time,' +
        ' imagesUrl: $imagesUrl,' +
        '}';
  }

  KakaoChattingTileModel copyWith({
    String? title,
    String? subtitle,
    String? time,
    String? imagesUrl,
  }) {
    return KakaoChattingTileModel(
      title: title ?? this.title,
      subTitle: subtitle ?? this.subTitle,
      time: time ?? this.time,
      imagesUrl: imagesUrl ?? this.imagesUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': this.title,
      'subtitle': this.subTitle,
      'time': this.time,
      'imagesUrl': this.imagesUrl,
    };
  }

  factory KakaoChattingTileModel.fromJson(Map<String, dynamic> map) {
    return KakaoChattingTileModel(
      title: map['title'] as String,
      subTitle: map['sub_title'] as String,
      time: map['time'] as String,
      imagesUrl: map['images_url'] as String,
    );
  }

//</editor-fold>
}