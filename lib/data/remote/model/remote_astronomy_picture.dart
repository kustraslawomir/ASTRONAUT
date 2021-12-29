import 'RemoteDataModel.dart';

class RemoteAstronomyPicture extends RemoteDataModel {
  RemoteAstronomyPicture({
    required this.date,
    required this.explanation,
    required this.hdurl,
    required this.mediaType,
    required this.serviceVersion,
    required this.title,
    required this.url,
  });

  late final String date;
  late final String explanation;
  late final String hdurl;
  late final String mediaType;
  late final String serviceVersion;
  late final String title;
  late final String url;

  fromJson(Map<String, dynamic> json) {
    date = json['date'];
    explanation = json['explanation'];
    hdurl = json['hdurl'];
    mediaType = json['media_type'];
    serviceVersion = json['service_version'];
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['date'] = date;
    _data['explanation'] = explanation;
    _data['hdurl'] = hdurl;
    _data['media_type'] = mediaType;
    _data['service_version'] = serviceVersion;
    _data['title'] = title;
    _data['url'] = url;
    return _data;
  }
}