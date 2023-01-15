// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/presentation/widgets/dropdown_widget.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/presentation/widgets/price_change_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Test Group
  group('Price Change Widget', () {
    testWidgets('==>: Loading...', (WidgetTester tester) async {
      PriceChangeWidget widget = const PriceChangeWidget(
        isPriceLoading: true,
      );
      await tester.pumpWidget(widget);

      // Find circular progress indicator
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
    testWidgets('==>: Price Up', (WidgetTester tester) async {
      PriceChangeWidget widget = PriceChangeWidget(
        key: UniqueKey(),
        isPriceLoading: false,
        price: 100,
        lastPrice: 99,
      );
      await tester.pumpWidget(widget);

      // Find a green color text with
      // text 'Price: 100.0'
      expect(find.byType(Text), findsOneWidget);
      expect(find.text('Price: 100.0'), findsOneWidget);
      expect(find.byWidgetPredicate((widget) {
        if (widget is DefaultTextStyle) {
          return widget.style.color == Colors.green;
        }
        return false;
      }), findsOneWidget);
    });
    testWidgets('==>: Price Down', (WidgetTester tester) async {
      PriceChangeWidget widget = PriceChangeWidget(
        key: UniqueKey(),
        isPriceLoading: false,
        price: 100,
        lastPrice: 101,
      );
      await tester.pumpWidget(widget);

      // Find a red color text with
      // text 'Price: 100.0'
      expect(find.byType(Text), findsOneWidget);
      expect(find.text('Price: 100.0'), findsOneWidget);
      expect(find.byWidgetPredicate((widget) {
        if (widget is DefaultTextStyle) {
          return widget.style.color == Colors.red;
        }
        return false;
      }), findsOneWidget);
    });
    testWidgets('==>: Price Same', (WidgetTester tester) async {
      PriceChangeWidget widget = PriceChangeWidget(
        key: UniqueKey(),
        isPriceLoading: false,
        price: 100,
        lastPrice: 100,
      );
      await tester.pumpWidget(widget);

      // Find a black color text with
      // text 'Price: 100.0'
      expect(find.byType(Text), findsOneWidget);
      expect(find.text('Price: 100.0'), findsOneWidget);
      expect(find.byWidgetPredicate((widget) {
        if (widget is DefaultTextStyle) {
          return widget.style.color == Colors.black54;
        }
        return false;
      }), findsOneWidget);
    });
    testWidgets('==>: Price null', (WidgetTester tester) async {
      PriceChangeWidget widget = PriceChangeWidget(
        key: UniqueKey(),
        isPriceLoading: false,
        price: null,
        lastPrice: null,
      );
      await tester.pumpWidget(widget);

      // Find a red color text with
      // text 'Price: 100.0'
      expect(find.byType(Text), findsOneWidget);
      expect(find.text('Price: --'), findsOneWidget);
    });
  });

  group('DropDown Widget', () {
    testWidgets('==>: No Item', (WidgetTester tester) async {
      PriceTrackerDropDownWidget widget = PriceTrackerDropDownWidget(
        items: const [],
        onChange: (value) {},
        title: '',
      );
      await tester.pumpWidget(widget);

      // Find circular progress indicator
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
