import 'package:kashaf/app/app.dart';
import 'package:kashaf/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
