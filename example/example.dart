/**
 * Created by Jaimin on 12/01/24.
 */

// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:developer' as developer;
import 'package:amazon_cognito_upload/amazon_cognito_upload.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(() {
    runApp(const MyApp());
  }, (dynamic error, dynamic stack) {
    developer.log("Something went wrong!", error: error, stackTrace: stack);
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0x9f4376f8),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Amazon s3 bucket image upload'),
          elevation: 4,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Click button to upload image'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AWSWebClient.uploadFile(
                  s3UploadUrl: S3_UPLOAD_URL, //your bucket url
                  s3SecretKey: S3_SECRET_KEY, //your secret key
                  s3Region: S3_REGION, //your region
                  s3AccessKey:S3_ACCESS_KEY , //your access key
                  s3BucketName: S3_BUCKET,    //your bucket name
                  folderName: 'profile',       //This folder name will auto generate folder in your bucket
                  fileName: 'imagedata.png',  //your file name
                  fileBytes: image.bytes, //your file bytes Note: it will take file as byte so you have to convert file into byte
                );
              },
              child: Text('Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
