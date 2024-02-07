import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_category_app/provider/filters_provider.dart';

class FilterScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends ConsumerState<FilterScreen> {
  bool enableRestricted = false;
  bool onlyDubbed = false;

  @override
  Widget build(BuildContext context) {
    enableRestricted = ref.watch(filterNotifierProvider)["kidMode"]!;
    onlyDubbed = ref.watch(filterNotifierProvider)["onlyDubbed"]!;

    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: onlyDubbed,
            onChanged: (val) {
              ref
                  .watch(filterNotifierProvider.notifier)
                  .toggleFilter("onlyDubbed", val);
            },
            title: const Text("Only dubbed Movies"),
            subtitle: const Text("Exclude movies without dub"),
          ),
          SwitchListTile(
            value: enableRestricted,
            onChanged: (val) {
              ref
                  .watch(filterNotifierProvider.notifier)
                  .toggleFilter("kidMode", val);
            },
            title: const Text("Movie for kids"),
            subtitle: const Text("Exclude restricted movies"),
          )
        ],
      ),
    );
  }
}
