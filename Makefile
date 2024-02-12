get:
	flutter pub get

clean:
	flutter clean

format:
	find . -not -path './.git/*' -not -path '*/.dart_tool/*' -not -path '*/lib/l10n/*' -name "*.dart" ! -name "*.g.dart" ! -name "*.gr.dart" ! -name "*_test.dart" ! -name '*.swagger.*' ! -name '*.config.dart' ! -name '*.chopper.dart' ! -name '*.freezed.dart' | tr '\n' ' ' | xargs fvm dart format --line-length=80


