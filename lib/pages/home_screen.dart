import 'package:flutter/material.dart';
import 'package:nectar_app/widgets/nectar_app_bar.dart';
import 'package:nectar_app/widgets/search_bar.dart' show CustomSearchBar;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss keyboard and remove focus from search bar
        FocusScope.of(context).unfocus();
        _searchFocusNode.unfocus();
      },
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: NectarAppBar(),
        ),
        body: Column(
          children: [
            // Search bar
            CustomSearchBar(
              controller: _searchController,
              focusNode: _searchFocusNode,
              onChanged: (value) {
                // Search functionality will go here
                print('Searching for: $value');
              },
            ),
            
            // Rest of your content will go here
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
