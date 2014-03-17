library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main(List<String> args) {

  final libList = ['lib/google_oauth2_browser.dart', 'lib/google_oauth2_console.dart'];

  // TODO: move to docgen, it breaks hop
  // addTask('docs', createDartDocTask(libList, linkApi: true));

  addTask('analyze_libs', createAnalyzerTask(libList));

  runHop(args);
}
