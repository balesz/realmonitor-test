clean () {
  flutter clean
}

deps () {
  flutter pub get
}

build () {
  dart run build_runner build --delete-conflicting-outputs
}

watch () {
  dart run build_runner watch --delete-conflicting-outputs
}

run () {
  flutter run --dart-define-from-file=.env
}

for i in $@; do $i; done

if [ $# -eq 0 ]; then
  clean
  deps
  build
fi
