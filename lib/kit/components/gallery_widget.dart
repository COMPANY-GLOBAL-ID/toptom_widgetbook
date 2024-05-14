import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../export.dart';

class GalleryWidget extends StatefulWidget {
  final List<String> images;
  final VoidCallback? onBack;
  final int initialImageIndex;

  const GalleryWidget(
      {super.key,
      required this.images,
      this.onBack,
      this.initialImageIndex = 0});

  static Future view(BuildContext context, {List<String> images = const []}) {
    return showDialog(
      context: context,
      builder: (context) => GalleryWidget(
        images: images,
        onBack: () => Navigator.of(context).pop(),
      ),
    );
  }

  @override
  State<GalleryWidget> createState() => _GalleryMaterialState();
}

class _GalleryMaterialState extends State<GalleryWidget> {
  static const double _initialScale = 1.0;
  static const double _minScale = 0.75;
  static const double _maxScale = 2.0;

  late ValueNotifier<double> _scaleNotifier;
  late ValueNotifier<Offset> _offsetNotifier;

  double _previousScale = _initialScale;
  Offset _startOffset = Offset.zero;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialImageIndex);
    _scaleNotifier = ValueNotifier(_initialScale);
    _offsetNotifier = ValueNotifier(Offset.zero);
  }

  void _next() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.linearToEaseOut,
    );
  }

  void _prev() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.linearToEaseOut,
    );
  }

  void _zoomIn() {
    _scaleNotifier.value =
        (_scaleNotifier.value + 0.25).clamp(_minScale, _maxScale);
  }

  void _zoomOut() {
    _scaleNotifier.value =
        (_scaleNotifier.value - 0.25).clamp(_minScale, _maxScale);
  }

  void _onPageChanged(int index) {
    _scaleNotifier.value = _minScale;
    _offsetNotifier.value = Offset.zero;
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
      ),
      child: Stack(
        children: [
          GestureDetector(
            onScaleStart: (details) {
              _previousScale = _scaleNotifier.value;
              _startOffset = _offsetNotifier.value;
            },
            onScaleUpdate: (details) {
              _scaleNotifier.value =
                  (_previousScale * details.scale).clamp(_minScale, _maxScale);
              _offsetNotifier.value = Offset(
                _startOffset.dx +
                    (details.focalPoint.dx - details.localFocalPoint.dx) /
                        _scaleNotifier.value,
                _startOffset.dy +
                    (details.focalPoint.dy - details.localFocalPoint.dy) /
                        _scaleNotifier.value,
              );
            },
            onScaleEnd: (_) {
              _previousScale = _scaleNotifier.value;
            },
            child: PageView.builder(
              pageSnapping: true,
              onPageChanged: _onPageChanged,
              controller: _pageController,
              itemCount: widget.images.length,
              itemBuilder: (BuildContext context, int index) {
                String url = widget.images[index];
                return ValueListenableBuilder(
                  valueListenable: _scaleNotifier,
                  builder: (context, double scale, child) {
                    return ValueListenableBuilder(
                      valueListenable: _offsetNotifier,
                      builder: (context, Offset offset, child) {
                        return Transform(
                          transform: Matrix4.identity()
                            ..scale(scale)
                            ..translate(offset.dx, offset.dy),
                          alignment: Alignment.center,
                          child: Image.network(
                            url,
                            loadingBuilder: (context, child, event) {
                              if (event?.cumulativeBytesLoaded ==
                                  event?.expectedTotalBytes) {
                                return child;
                              }
                              return const Center(
                                  child: CupertinoActivityIndicator());
                            },
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  ButtonIcon(
                    icon: Icons.arrow_back,
                    type: ButtonType.defaultButton,
                    color: ButtonColor.white,
                    onPressed: widget.onBack ?? () {},
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: AutoSizeText(
                      Uri.parse(widget.images[0]).path,
                      maxLines: 1,
                    ),
                  ),
                  ButtonIcon(
                    icon: Icons.cloud_download_outlined,
                    type: ButtonType.ghost,
                    color: ButtonColor.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonIcon(
                    icon: Icons.arrow_back,
                    color: ButtonColor.white,
                    type: ButtonType.ghost,
                    onPressed: _prev,
                  ),
                  Row(
                    children: [
                      ButtonIcon(
                        icon: Icons.zoom_out,
                        color: ButtonColor.white,
                        type: ButtonType.ghost,
                        onPressed: _zoomOut,
                      ),
                      ValueListenableBuilder(
                        valueListenable: _scaleNotifier,
                        builder: (context, double scale, child) {
                          return ButtonWidget(
                            color: ButtonColor.white,
                            type: ButtonType.ghost,
                            onPressed: () {},
                            child: Text(
                                '${((scale * 100).roundToDouble()).toInt()}%'),
                          );
                        },
                      ),
                      ButtonIcon(
                        icon: Icons.zoom_in,
                        color: ButtonColor.white,
                        type: ButtonType.ghost,
                        onPressed: _zoomIn,
                      ),
                    ],
                  ),
                  ButtonIcon(
                    icon: Icons.arrow_forward,
                    color: ButtonColor.white,
                    type: ButtonType.ghost,
                    onPressed: _next,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
