import 'package:flutter/material.dart';
import 'package:example_project/examples/media_query_example.dart';
import 'package:example_project/examples/name_swap_with_provider.dart';
import 'package:example_project/examples/onboarding_screen.dart';
import 'package:example_project/examples/simple_layout_page.dart';
import 'package:example_project/examples/single_child_scroll_view_example.dart';
import 'package:example_project/examples/sliver_appbar_example.dart';
import 'package:example_project/examples/wrap_example.dart';

class ExampleItem {
  final String title;
  final String imageUrl;
  final Function(BuildContext) onTap;

  ExampleItem({
    required this.title,
    required this.imageUrl,
    required this.onTap,
  });
}

class AllInOneScreen extends StatelessWidget {
  // A list of example items to display in the grid.
  final List<ExampleItem> examples = [
    ExampleItem(
      title: 'Simple Layout Page Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SimpleLayoutPage()),
        );
      },
    ),
    ExampleItem(
      title: 'Onboarding Screen Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/003/292/211/non_2x/creative-onboarding-ui-ux-process-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const OnboardingScreen()),
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All In One Examples')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns in the grid
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: EdgeInsets.all(10),
        itemCount: examples.length,
        itemBuilder: (context, index) {
          final example = examples[index];
          return GestureDetector(
            onTap: () => example.onTap(context),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.network(
                      example.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      example.title,
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: AllInOneScreen()));
