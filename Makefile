get:
	(flutter pub get)

fresh:
	(flutter clean;flutter pub get;dart run build_runner build --delete-conflicting-outputs)

runner:
	(dart run build_runner build --delete-conflicting-outputs)

watch:
	(dart run build_runner watch --delete-conflicting-outputs)

apk:
	(flutter build apk --flavor production --target lib/main_production.dart)