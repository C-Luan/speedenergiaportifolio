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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 500,
                    child: Text('SPEED ENGENHARIA ELETRICA E SOLAR LTDA\n',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
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
                    child: Text('Sobre nós\n',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                        '''Somos especialistas em energia solar, oferecendo soluções sustentáveis que promovem economia e um futuro mais limpo. Nossa equipe é dedicada a fornecer instalações de qualidade e eficiência para cada cliente.''',
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ),
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
