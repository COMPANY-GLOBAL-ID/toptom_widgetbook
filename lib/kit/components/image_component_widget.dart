import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

enum ImageSize { sm, md, lg }

enum ImageFormat { webp, png, svg }

class ImageComponentWidget extends StatelessWidget {
  final String? id;
  final double widthPercent;
  final ImageSize size;
  final ImageFormat format;
  final Widget Function(
      BuildContext context, Object error, StackTrace? stackTrace)? errorBuilder;

  const ImageComponentWidget({
    super.key,
    required this.id,
    required this.widthPercent,
    this.format = ImageFormat.png,
    this.size = ImageSize.md,
    this.errorBuilder,
  });

  _getImageUrl() {
    return 'https://media.ocean-business.com/uploads/${size.name}/$id.${format.name}';
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(ThemeCore.of(context).radius.large),
      child: SizedBox(
        height: MediaQuery.of(context).size.width * widthPercent,
        width: MediaQuery.of(context).size.width * widthPercent,
        child: Image.network(
          _getImageUrl(),
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            if (errorBuilder != null) {
              return errorBuilder!(context, error, stackTrace);
            }
            return Image.asset(
              'assets/images/image_placeholder.png',
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
