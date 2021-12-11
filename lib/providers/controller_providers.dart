import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lily_searcher/controllers/lily_search_controller.dart';
import 'package:lily_searcher/providers/core_providers.dart';
import 'package:lily_searcher/providers/repository_providers.dart';

final lilySearchControllerProvider = Provider.autoDispose<LilySearchController>((ref) =>
    LilySearchController(ref.read(lilyRdfRepositoryProvider),
        ref.read(loggerProvider), ref.read(businessExceptionProvider)));
