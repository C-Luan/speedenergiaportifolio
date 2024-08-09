import 'package:flutter/material.dart';

class SobreSection extends StatelessWidget {
  const SobreSection({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Theme.of(context).dividerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 500,
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text('SPEED ENGENHARIA ELETRICA E SOLAR LTDA',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Text('Endereço',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  Text(
                      'Rodovia Augusto Montenegro,4300 - Parque Verde,\nBelém, Brazil 66635-110'),
                  Text(
                      'Email: consorcios@speedoficialpa.com.br  Telefone:(91) 98829-0350'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 500,
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text('Sobre nós',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id tempor tortor. Vivamus est massa, viverra.',
                      style: TextStyle(fontWeight: FontWeight.w800)),
                ],
              ),
            ],
          ),
          Text('Desenvolvido por Adatech desenvolvimento de sistemas')
        ],
      ),
    );
  }
}
