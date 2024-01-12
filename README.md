# amazon_cognito_upload

The amazon_cognito_upload package is a Dart library designed to simplify and streamline the process
of uploading files to Amazon Cognito, a robust and secure cloud service offered by Amazon Web
Services (AWS). This package is particularly useful for those who need to integrate file upload
functionality with Amazon Cognito authentication.

## Features

* Simplified File Uploads: Streamline the process of uploading files to Amazon Cognito, reducing
  development time and complexity.
* Customizable Configuration: Tailor the package to meet your specific requirements with
  customizable configuration options.

## Getting started

Install

Add the **amazon_cognito_upload** package to your pubspec dependencies.

Super simple to use

```dart

import 'package:amazon_cognito_upload/amazon_cognito_upload.dart';

void uploadFile() {
  AWSWebClient.uploadFile(
    s3UploadUrl: '', //s3 bucket url like : https://yourbucket name.s3.region.amazonaws.com/
    s3SecretKey: '',
    s3Region: '',
    s3AccessKey: '',
    s3BucketName: '',
    folderName: '',
    fileName: '',
    fileBytes: '',
  );
}
```

## Important

Remember that enabling CORS for public access temporary when you upload file to S3 bucket.
the security implications of allowing cross-origin requests. Make sure to only allow the origins
that you trust.


#### Support me to grow for better work

<a href="https://www.buymeacoffee.com/jaiminraval" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>


