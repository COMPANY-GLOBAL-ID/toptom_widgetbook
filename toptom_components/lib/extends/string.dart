extension StringExt on String  {
  String upperFirst () {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get toSnakeCase => replaceAllMapped(
    RegExp(r'([A-Z])'),
        (Match match) => '_${match.group(1)?.toLowerCase()}',
  );
}