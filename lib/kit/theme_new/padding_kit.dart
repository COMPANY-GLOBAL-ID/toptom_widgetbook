class PaddingKit {
  final double xl10;
  final double xl9;
  final double xl8;
  final double xl7;
  final double xl6;
  final double xl5;
  final double xl4;
  final double xl3;
  final double xl2;
  final double xl;
  final double l;
  final double m;
  final double ms;
  final double s;

  const PaddingKit({
    this.xl10 = 56,
    this.xl9 = 52,
    this.xl8 = 48,
    this.xl7 = 44,
    this.xl6 = 40,
    this.xl5 = 36,
    this.xl4 = 32,
    this.xl3 = 28,
    this.xl2 = 24,
    this.xl = 20,
    this.l = 16,
    this.m = 12,
    this.ms = 8,
    this.s = 4,
  });

  PaddingKit copyWith({
    double? xl10,
    double? xl9,
    double? xl8,
    double? xl7,
    double? xl6,
    double? xl5,
    double? xl4,
    double? xl3,
    double? xl2,
    double? xl,
    double? l,
    double? m,
    double? ms,
    double? s,
  }) {
    return PaddingKit(
      xl10: xl10 ?? this.xl2,
      xl9: xl9 ?? this.xl2,
      xl8: xl8 ?? this.xl2,
      xl7: xl7 ?? this.xl2,
      xl6: xl6 ?? this.xl2,
      xl5: xl5 ?? this.xl2,
      xl4: xl4 ?? this.xl2,
      xl3: xl3 ?? this.xl2,
      xl2: xl2 ?? this.xl2,
      xl: xl ?? this.xl,
      l: l ?? this.l,
      m: m ?? this.m,
      ms: ms ?? this.ms,
      s: s ?? this.s,
    );
  }
}
