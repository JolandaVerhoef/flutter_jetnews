/*
 * Copyright 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:jetnews/main.dart';

void main() {
  testWidgets('App launches and opens article', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(JetnewsApp());

    // This test will not run as we can't inject a fake repository.

    // // Verify that the app shows the home screen
    // expect(find.text('Top stories for you'), findsOneWidget);
    //
    // // Tap an article
    // await tester.tap(find.text('Manuel Vivo'));
    // await tester.pump();
    //
    // // Verify that the article screen is showing.
    // expect(find.text('Article 7446d8dfd7dc'), findsOneWidget);
  });
}
