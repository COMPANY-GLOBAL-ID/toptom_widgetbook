get:
	flutter pub get

clean:
	flutter clean

format:
	fvm dart format .
	fvm dart fix --apply

fix:
	fvm dart fix --apply

generate:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

pods:
	cd ios && arch -x86_64 pod install --repo-update

repair:
	flutter pub cache repair

build:
	dart run build_runner watch