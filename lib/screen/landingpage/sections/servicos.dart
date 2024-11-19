import 'package:flutter/material.dart';

class ServicosPrestados extends StatelessWidget {
  ServicosPrestados({super.key, required this.height});
  final double height;
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Scrollbar(
          controller: scrollController,
          interactive: true,
          child: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: height,
              width: 1600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 400,
                    height: 490,
                    child: Container(
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(23),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/carroucel/1.JPG'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    height: 490,
                    child: Container(
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(23),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/carroucel/2.JPG'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    height: 490,
                    child: Container(
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(23),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/carroucel/3.JPG'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    height: 490,
                    child: Container(
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(23),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/carroucel/4.JPG'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _cardServico({required String title, required String subtitle}) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        const Card(
          color: Colors.grey,
          child: SizedBox(
            width: 230,
            child: ListTile(),
          ),
        ),
        Card(
          color: Colors.white,
          child: ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        )
      ],
    );
  }
}
