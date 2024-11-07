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
              decoration: BoxDecoration(

                  color: Colors.grey

                  ),
              height: height - 50,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/promocioanl.png',
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
