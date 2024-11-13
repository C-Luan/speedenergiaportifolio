import 'package:flutter/material.dart';

class InicioSection extends StatelessWidget {
  const InicioSection({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey),
              height: height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      MediaQuery.of(context).size.width < 1000
                          ? 'assets/images/background/bgmobile.png'
                          : 'assets/images/background/bgwide.png',
                    ),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
