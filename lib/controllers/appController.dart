import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:mzikky_app/models/TrackModel.dart';

class AppController extends GetxController {
  static AppController get instance => Get.find();

  final appIndex = 0.obs;
  final navBar = true.obs;
  final miniplayerState = false.obs;
  final ScrollController scrollController = ScrollController();

  final playerMinHeight = 60.0;
  MiniplayerController miniplayerController = MiniplayerController();
  TrackModel? selectedTrack = TrackModel(
      title: 'title',
      artist: 'artist',
      cover:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXOFJIhiCrQ42QnYJ6dtqajn55qNy6_rYKIg&usqp=CAU',
      year: 2001,
      genre: 'genre');

  //TrackModel? selectedTrack ;
  @override
  onInit() {
    super.onInit();
  }

  toogleNavBar(bool navigationBar) {
    navBar(navigationBar);
  }

  stateUpdate({int? pageIndex, TrackModel? track, bool? navigationBar}) {
    if (navigationBar != null) navBar(navigationBar);
    if (pageIndex != null) appIndex.value = pageIndex;
    if (track != null) selectedTrack = track;
    update();
  }

  int getIndex() {
    return appIndex.value;
  }
}
