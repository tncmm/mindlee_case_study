import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_case_study/core/model/message_model/message_model.dart';
import 'package:mindlee_case_study/core/provider/dio_provider.dart';

final homeViewService = Provider((ref) => HomeViewService(ref));

class HomeViewService {
  Ref ref;
  final Dio _dio;
  HomeViewService(this.ref)
      : _dio = ref.watch(dioProvider((authRequired: false)));

  List<MessageModel> messages = [
    MessageModel(
      id: 1,
      message:
          "Hello, how are you doing today? I hope everything is going well. It's been a while since we last caught up.",
      isLiked: true,
      title: "Greeting",
      date: DateTime.now().subtract(const Duration(days: 1)),
    ),
    MessageModel(
      id: 2,
      message:
          "This is a test message to ensure that everything is working as expected. Please review and provide feedback.",
      isLiked: false,
      title: "Test",
      date: DateTime.now().subtract(const Duration(days: 2)),
    ),
    MessageModel(
      id: 3,
      message:
          "I'm really enjoying the weather today! It's sunny and warm, a perfect day to be outside and enjoy some fresh air.",
      isLiked: true,
      title: "Weather",
      date: DateTime.now().subtract(const Duration(days: 3)),
    ),
    MessageModel(
      id: 4,
      message:
          "I've been working on a new project lately. It's quite challenging but also very rewarding. Can't wait to show it to you!",
      isLiked: false,
      title: "Work",
      date: DateTime.now().subtract(const Duration(days: 4)),
    ),
    MessageModel(
      id: 5,
      message:
          "Looking forward to the weekend. It's been a hectic week, and I can't wait to relax and spend some quality time with family and friends.",
      isLiked: true,
      title: "Weekend",
      date: DateTime.now().subtract(const Duration(days: 5)),
    ),
  ];

  Future<List<MessageModel>> getMessages() async {
    //If I have a api for message. I will get data for this

    try {
      /*final response = await _dio.get(
        '${ServiceUrls.serverName}/register',
      );
      final result =
          BaseResponseModel.fromJson(response.data, Messagemodel.fromJson);
       (result.data != null && result.data != {}) {
        return result.data;
      } else {
        return null;
      }
      return result.data;*/
      return messages;
    } catch (e) {
      return throw Exception(e);
    }
  }
}
