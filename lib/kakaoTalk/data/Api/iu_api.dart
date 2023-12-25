import 'dart:convert';

import 'package:ui_clone/kakaoTalk/data/mock_data.dart';
import 'package:ui_clone/kakaoTalk/model/kakao_model.dart';

Future<List<KakaoChattingTileModel>> getDate() async {
  await Future.delayed((const Duration(milliseconds: 200)));
  final response = await json.decode(mock);

  List<KakaoChattingTileModel> responseData = List<KakaoChattingTileModel>.from(
      response.map((data) => KakaoChattingTileModel.fromJson(data)).toList());

  return responseData;
}