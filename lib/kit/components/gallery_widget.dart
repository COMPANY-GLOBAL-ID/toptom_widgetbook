import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../export.dart';

class GalleryWidget extends StatefulWidget {
  final List<String> images;
  final VoidCallback? onBack;
  final int initialImageIndex;

  const GalleryWidget({super.key, required this.images, this.onBack, this.initialImageIndex = 0});


  static Future view(BuildContext context,  {List<String> images = const []}) {
    return showDialog(
      context: context,
      builder: (context) => GalleryWidget(
        images: images,
        onBack: () => Navigator.of(context).pop(),
      )
    );
  }

  @override
  State<GalleryWidget> createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget> {
  static const double _initialScale = 1.0;
  static const double _minScale = 0.75;
  static const double _maxScale = 2.0;
  double _scale = _initialScale;
  double _previousScale = 1.0;
  Offset _startOffset = Offset.zero;
  Offset _currentOffset = Offset.zero;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialImageIndex);
  }

  _next() {
    _pageController.nextPage( duration: const Duration(milliseconds: 300), curve: Curves.linearToEaseOut);
  }

  _prev() {
    _pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.linearToEaseOut);
  }

  _zoomIn() {
    setState(() {
      _scale = (_scale + 0.25).clamp(_minScale, 2);
    });
  }

  _zoomOut() {
    setState(() {
      _scale = (_scale - 0.25).clamp(_minScale, 2);
    });
  }

  _onPageChanged(int index) {
    setState(() {
      _scale = _minScale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7)
      ),
      child: Stack(
        children: [
          GestureDetector(
              onScaleStart: (details) {
                _previousScale = _scale;
                _startOffset = _currentOffset;
              },
              onScaleUpdate: (details) {
                setState(() {
                  _scale = (_previousScale * details.scale).clamp(_minScale, _maxScale);
                  _currentOffset = Offset(
                    _startOffset.dx + details.focalPoint.dx - details.localFocalPoint.dx,
                    _startOffset.dy + details.focalPoint.dy - details.localFocalPoint.dy,
                  );
                });
              },
              onScaleEnd: (details) {
                _previousScale = _scale.clamp(_minScale, _maxScale);
              },
              child: PageView.builder(
                pageSnapping: true,
                onPageChanged: _onPageChanged,
                controller: _pageController,
                itemCount: widget.images.length,
                itemBuilder: (BuildContext context, int index) {
                  String url = widget.images[index];
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    transform: Matrix4.identity()
                      ..scale(_scale),
                    alignment: Alignment.center,
                    child: Image.network(url,
                      loadingBuilder: (context, child, event) {
                        if(event?.cumulativeBytesLoaded == event?.expectedTotalBytes) {
                          return child;
                        }
                        return Center(child: CupertinoActivityIndicator());
                      },
                    ),
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
                  SizedBox(width: 10),
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
                      ButtonWidget(
                        child: Text('${(((_scale) * 100).roundToDouble()).toInt()}%',),
                        color: ButtonColor.white,
                        type: ButtonType.ghost,
                        onPressed: () {},
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}