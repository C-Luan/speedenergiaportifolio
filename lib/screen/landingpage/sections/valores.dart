import 'package:flutter/material.dart';

import '../../../styles/glass.dart';

class ValoresSection extends StatelessWidget {
  const ValoresSection({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      start: 0.6,
      end: 0.6,
      child: Card(
        elevation: 20,
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: SizedBox(
          width: 1300,
          height: height,
          child: Row(
            children: [
              Flexible(
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Text(
                    'Visão\n',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  subtitle: Text(
                    'Ser líder em energia limpa, promovendo economia e sustentabilidade para nossos clientes.',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: VerticalDivider(),
              ),
              Flexible(
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Text(
                    'Missão\n',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  subtitle: Text(
                    'Oferecer soluções sustentáveis em energia solar com qualidade e confiança.',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: VerticalDivider(),
              ),
              Flexible(
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Text(
                    'Valores\n',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  subtitle: Text(
                    'Compromisso ambiental, inovação, qualidade e transparência.',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
