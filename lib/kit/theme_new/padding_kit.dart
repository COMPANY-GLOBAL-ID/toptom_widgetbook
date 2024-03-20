class PaddingKit {
  final double xl;
  final double l;
  final double m;
  final double ms;
  final double s;

  const PaddingKit({
    this.xl = 20,
    this.l = 16,
    this.m = 12,
    this.ms = 8,
    this.s = 4,
  });

  PaddingKit copyWith({
    double? xl,
    double? l,
    double? m,
    double? ms,
    double? s,
  }) {
    return PaddingKit(
      xl: xl ?? this.xl,
      l: l ?? this.l,
      m: m ?? this.m,
      ms: ms ?? this.ms,
      s: s ?? this.s,
    );
  }
}
