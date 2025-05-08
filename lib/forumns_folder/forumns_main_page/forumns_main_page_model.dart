import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forumns_main_page_widget.dart' show ForumnsMainPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ForumnsMainPageModel extends FlutterFlowModel<ForumnsMainPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Popular_Carousel widget.
  CarouselSliderController? popularCarouselController;
  int popularCarouselCurrentIndex = 1;

  // State field(s) for recentActivity_Carousel widget.
  CarouselSliderController? recentActivityCarouselController;
  int recentActivityCarouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
