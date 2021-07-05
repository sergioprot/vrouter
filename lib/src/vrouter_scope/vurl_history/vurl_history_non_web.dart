import 'package:flutter/widgets.dart';

import 'vrouter_modes.dart';
import 'vurl_history.dart';

/// Implementation of [VHistory] which should be used
/// on every platform which is NOT the web
class VHistoryNonWeb extends VHistory {
  VHistoryNonWeb({
    required VRouterMode vRouterMode,
  }) : super(
          vRouterMode: vRouterMode,
          // Always 0 when the app is started
          initialHistoryIndex: 0,
          // Always 0 when the app is started
          initialHistoryLength: 0,
          // We use [Navigator.defaultRouteName] to enable mobile deep-linking
          initialLocations: [
            VRouteInformation(
              location: Navigator.defaultRouteName,
              state: {},
            ),
          ],
        );
}