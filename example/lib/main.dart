import 'package:flutter/material.dart';
import 'package:mui_typography/mui_typography.dart';

void main() {
  runApp(const TypographyExampleApp());
}

class TypographyExampleApp extends StatelessWidget {
  const TypographyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MuiTypography Example',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const TypographyDemoScreen(),
    );
  }
}

class TypographyDemoScreen extends StatelessWidget {
  const TypographyDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MuiTypography Example')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔥 Basic Variant Usage
            "Typography Variants".h4.withGutterBottom,
            "Display Large (h1)".h1,
            "Display Medium (h2)".h2,
            "Display Small (h3)".h3,
            "Headline Medium (h4)".h4,
            "Headline Small (h5)".h5,
            "Title Large (h6)".h6,
            "Title Medium (subtitle1)".subtitle1,
            "Title Small (subtitle2)".subtitle2,
            "Body Large (body1)".body1,
            "Body Medium (body2)".body2,
            "Caption".caption,
            "Overline".overline.withGutterBottom,

            const Divider(height: 40),

            // 🔥 Demonstrating chaining
            "Chaining Example".h4.withGutterBottom,
            "You can chain modifiers easily".body1
                .withColor(Colors.blue)
                .withGutterBottom,
            "This is noWrap text which will ellipsis if too long"
                .body1
                .withNoWrap,
            "This is a paragraph with spacing".body2.withParagraph.withColor(
              Colors.deepPurple,
            ),

            const Divider(height: 40),

            // 🔥 Manual constructor usage
            const MuiTypography(
              "Using MuiTypography directly",
              variant: Variant.h5,
              gutterBottom: true,
            ),

            // 🔥 with .call() extension
            "Using call() extension for inline parameters"(
              variant: Variant.h6,
              color: Colors.teal,
              gutterBottom: true,
            ),

            const Divider(height: 40),

            // 🔥 Alignment demo
            "Alignment Demo".h4.withGutterBottom,
            Container(
              color: Colors.grey.shade200,
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              child: "This text is centered".body1
                  .withAlign(TextAlign.center)
                  .withColor(Colors.black87),
            ),

            const SizedBox(height: 16),

            Container(
              color: Colors.grey.shade200,
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              child: "This text is right aligned".body1
                  .withAlign(TextAlign.end)
                  .withColor(Colors.black87),
            ),

            const Divider(height: 40),

            // 🔥 Button variant demo
            "Button Variant".h4.withGutterBottom,
            "BUTTON STYLE".button.withColor(Colors.blue),

            const Divider(height: 40),

            // 🔥 Example layout usage
            "Practical UI Example".h4.withGutterBottom,
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Card Title".h5.withGutterBottom,
                    "This is a body2 text inside a card. "
                            "MuiTypography makes styling consistent."
                        .body2
                        .withParagraph,
                    "Learn more →".body2
                        .withColor(Colors.blue)
                        .withAlign(TextAlign.end),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
