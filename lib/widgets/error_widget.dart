import 'package:flutter/material.dart';

class ErrorWidgetCustom extends StatelessWidget {
  final VoidCallback onRetry;

  const ErrorWidgetCustom({Key? key, required this.onRetry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 60, color: Colors.redAccent),
          SizedBox(height: 16),
          Text("Something went wrong!", style: TextStyle(fontSize: 18)),
          SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              backgroundColor: Colors.redAccent,
            ),
            onPressed: onRetry,
            child: Text("Retry"),
          ),
        ],
      ),
    );
  }
}