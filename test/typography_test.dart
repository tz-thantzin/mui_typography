import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mui_typography/mui_typography.dart';

void main() {
  group('MuiTypography - String Extension Tests', () {
    testWidgets('Basic variants render correct TextStyle', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Column(
              children: [
                "H1 Test".h1,
                "H2 Test".h2,
                "Body1 Test".body1,
                "Button Test".button,
              ],
            ),
          ),
        ),
      );

      final h1Finder = find.text('H1 Test');
      final h2Finder = find.text('H2 Test');
      final body1Finder = find.text('Body1 Test');
      final buttonFinder = find.text('Button Test');

      expect(h1Finder, findsOneWidget);
      expect(h2Finder, findsOneWidget);
      expect(body1Finder, findsOneWidget);
      expect(buttonFinder, findsOneWidget);

      final h1Text = tester.widget<Text>(h1Finder);
      final h2Text = tester.widget<Text>(h2Finder);

      expect(h1Text.style?.fontSize, greaterThan(h2Text.style!.fontSize!));
    });

    testWidgets(
      'Fluent modifiers: withColor, withGutterBottom, withNoWrap, withParagraph',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Column(
                children: [
                  "Colored Text".body1.withColor(Colors.red),
                  "Gutter Bottom".body1.withGutterBottom,
                  "No Wrap Long Text Very Very Long Indeed".body1.withNoWrap,
                  "Paragraph Spacing".body2.withParagraph,
                ],
              ),
            ),
          ),
        );

        final coloredText = tester.widget<Text>(find.text('Colored Text'));
        final noWrapText = tester.widget<Text>(
          find.textContaining('No Wrap Long Text'),
        );

        // Color
        expect(coloredText.style?.color, Colors.red);

        // GutterBottom → wrapped in Padding(bottom: 8)
        expect(
          tester.widget<Padding>(
            find.ancestor(
              of: find.text('Gutter Bottom'),
              matching: find.byType(Padding),
            ),
          ),
          isNotNull,
        );

        // NoWrap → TextOverflow.ellipsis + maxLines: 1
        expect(noWrapText.overflow, TextOverflow.ellipsis);
        expect(noWrapText.maxLines, 1);

        // Paragraph → Padding(bottom: 16)
        final paragraphPadding = tester.widget<Padding>(
          find
              .ancestor(
                of: find.text('Paragraph Spacing'),
                matching: find.byType(Padding),
              )
              .first,
        );
        expect(paragraphPadding.padding, const EdgeInsets.only(bottom: 16.0));
      },
    );

    testWidgets('call() extension syntax works perfectly', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Column(
              children: [
                "Call Syntax H4"(variant: Variant.h4),
                "Call with Color"(
                  variant: Variant.body1,
                  color: Colors.purple,
                  gutterBottom: true,
                ),
                "Call with Alignment"(
                  variant: Variant.subtitle1,
                  align: TextAlign.center,
                  noWrap: true,
                ),
              ],
            ),
          ),
        ),
      );

      expect(find.text('Call Syntax H4'), findsOneWidget);
      expect(find.text('Call with Color'), findsOneWidget);
      expect(find.text('Call with Alignment'), findsOneWidget);

      final purpleText = tester.widget<Text>(find.text('Call with Color'));
      expect(purpleText.style?.color, Colors.purple);

      final centeredText = tester.widget<Text>(
        find.text('Call with Alignment'),
      );
      expect(centeredText.textAlign, TextAlign.center);
    });

    testWidgets(
      'Backward compatibility: old .color, .gutterBottom still work (deprecated)',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Column(
                children: [
                  "Old Color".body1.withColor(Colors.orange),
                  "Old Gutter".body1.withGutterBottom,
                  "Old NoWrap".body1.withNoWrap,
                ],
              ),
            ),
          ),
        );

        final orangeText = tester.widget<Text>(find.text('Old Color'));
        expect(orangeText.style?.color, Colors.orange);

        expect(find.byType(Padding), findsNWidgets(1)); // from gutterBottom
      },
    );

    testWidgets('Alignment via .withAlign()', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: "Centered Text".body1.withAlign(TextAlign.center),
            ),
          ),
        ),
      );

      final textWidget = tester.widget<Text>(find.text('Centered Text'));
      expect(textWidget.textAlign, TextAlign.center);
    });

    testWidgets('Button variant has correct weight', (tester) async {
      await tester.pumpWidget(
        MaterialApp(home: Scaffold(body: "CLICK ME".button)),
      );

      final buttonText = tester.widget<Text>(find.text('CLICK ME'));
      expect(buttonText.style?.fontWeight, FontWeight.w500);
    });

    testWidgets('Overline variant has correct style', (tester) async {
      await tester.pumpWidget(
        MaterialApp(home: Scaffold(body: "OVERLINE".overline)),
      );

      final overlineText = tester.widget<Text>(find.text('OVERLINE'));
      expect(overlineText.style?.fontSize, 10.0);
      expect(overlineText.style?.letterSpacing, 1.5);
      expect(overlineText.style?.fontWeight, FontWeight.w400);
    });
  });
}
