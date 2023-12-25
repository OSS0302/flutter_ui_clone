import 'dart:convert';

import 'package:ui_clone/kakaoTalk/data/Api/iu_api.dart';
import 'package:ui_clone/kakaoTalk/data/mock_data.dart';
import 'package:ui_clone/kakaoTalk/model/kakao_model.dart';


  Future<List<KakaoChattingTileModel>> getIuData() async {
    final response = await getDate();
    print(response);
    return response;

}

