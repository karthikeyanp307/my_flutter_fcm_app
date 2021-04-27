// @dart = 2.9

// Copyright 2020, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.9

import 'package:firebase_core/firebase_core.dart';

import 'dart:io';

// Initializes a secondary app for testing
Future<FirebaseApp> testInitializeSecondaryApp() async {
  const String testAppName = 'testapp';

  FirebaseOptions testAppOptions;
  if (Platform.isIOS || Platform.isMacOS) {
    testAppOptions = const FirebaseOptions(
      appId: '1:934113297926:ios:717e1301d4c103263d2587',
      apiKey: 'AIzaSyB43A6fp-woCizAz036qp5ZdHCpMjtUeJA',
      projectId: 'flutter-fcm-app-b22c8',
      messagingSenderId: '934113297926',
      iosBundleId: 'gcare.genesys.flutterFcmApp',
    );
  } else {
    testAppOptions = const FirebaseOptions(
      appId: '1:934113297926:android:a9bb1110d40662ca3d2587',
      apiKey: 'AIzaSyDOUOppvd61vD6ltkF6vyESMWbtxD_Kh0Q',
      projectId: 'flutter-fcm-app-b22c8',
      messagingSenderId: '934113297926',
    );
  }

  return Firebase.initializeApp(name: testAppName, options: testAppOptions);
}
