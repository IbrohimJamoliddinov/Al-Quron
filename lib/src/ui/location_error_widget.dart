import 'package:flutter/material.dart';

class LocationErrorWidget extends StatelessWidget {
  final String? error;
  final Function? callback;

  LocationErrorWidget({
    this.error,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    final box = SizedBox(
      height: 32,
    );
    final errorColor = Color(0xffb00020);
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.location_off,
              size: 150,
              color: errorColor,
            ),
            box,
            Text(
              error!,
            ),
            ElevatedButton(
                onPressed: () {
                  if (callback != null) {
                    callback!();
                  }
                },
                child: Text("Retry"))
          ],
        ),
      ),
    );
  }
}
