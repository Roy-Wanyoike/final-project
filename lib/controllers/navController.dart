import 'package:get/get.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:mzikky_app/models/TrackModel.dart';

class NavController extends GetxController {
  static NavController instance = Get.find();
  final appIndex = 0.obs;
  final navBar = true.obs;
  final heightPlayer = 0.1.obs;
  MiniplayerController miniplayerController = MiniplayerController();
  TrackModel? selectedTrack = TrackModel(
      title: 'title',
      artist: 'artist',
      cover:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXOFJIhiCrQ42QnYJ6dtqajn55qNy6_rYKIg&usqp=CAU',
      year: 2001,
      genre: 'genre');

  //TrackModel? selectedTrack ;

  setIndex(int index) {
    appIndex(index);
  }

  int getIndex() {
    return appIndex.value;
  }
}
