import 'package:flutter/widgets.dart';
import 'package:kashaf/l10n/gen/app_localizations.dart';

export 'package:kashaf/l10n/gen/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
