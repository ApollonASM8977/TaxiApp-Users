import 'dart:io';
import 'package:flutter/material.dart';

class CommonMethods {
  Future<bool> checkConnectivity(BuildContext context) async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('Connected to the internet');
        return true;
      }
    } on SocketException catch (_) {
      print('No internet connection');
      displaySnackBar("Your Internet is not Available. Please check your connection and try again.", context);
      return false;
    }
    return false;
  }

  void displaySnackBar(String messageText, BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final snackBar = SnackBar(content: Text(messageText));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      print('SnackBar should be displayed'); // Additional debug statement
    });
  }
}
