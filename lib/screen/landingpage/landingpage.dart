import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:speedenergiaportifolio/screen/landingpage/sections/parceiros.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/appbar/home/menu_bar.dart';
import 'sections/about.dart';
import 'sections/inicio.dart';
import 'sections/servicos.dart';
import 'sections/testemunhos.dart';
import 'sections/valores.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  final scrollcontroller = ScrollController();
  final feedbackSectionController = GlobalKey();
  final servicosSectionController = GlobalKey();
  final valoresSectionController = GlobalKey();
  final inicioSectionController = GlobalKey();
  final sobreSectionController = GlobalKey();
  @override
  void dispose() {
    scrollcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(FontAwesomeIcons.whatsapp),
          onPressed: () async {
            if (!await launchUrl(Uri.parse(
                'https://wa.me/559181602901?text=${Uri.parse('Olá! tenho enteresse em solicitar uma cotação')}'))) {
              throw Exception('Could not launch ');
            }
          }),
      body: SingleChildScrollView(
        controller: scrollcontroller,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                InicioSection(key: inicioSectionController, height: 900),
                Positioned(
                  top: 20,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: MenuBarHome(
                      onMenuClick: _onMenuClick,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  child: ValoresSection(
                    height: 150,
                    key: valoresSectionController,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ServicosPrestados(key: servicosSectionController, height: 500),
            SizedBox(
              height: 40,
            ),
            PerceirosSections(height: 800),
            SizedBox(
              height: 40,
            ),
            // TestemunhosSections(key: feedbackSectionController, height: 400),
            SobreSection(key: sobreSectionController, height: 300)
          ],
        ),
      ),
    );
  }

  void _onMenuClick(int value) {
    final RenderBox renderbox;

    switch (value) {
      case 1:
        renderbox = inicioSectionController.currentContext!.findRenderObject()
            as RenderBox;
        break;
      case 2:
        renderbox = valoresSectionController.currentContext!.findRenderObject()
            as RenderBox;
        break;
      case 3:
        renderbox = servicosSectionController.currentContext!.findRenderObject()
            as RenderBox;
        break;
      case 4:
        renderbox = feedbackSectionController.currentContext!.findRenderObject()
            as RenderBox;
        break;
      case 5:
        renderbox = sobreSectionController.currentContext!.findRenderObject()
            as RenderBox;
        break;
      default:
        throw Exception();
    }
    final Offset offset = renderbox.localToGlobal(Offset.zero);
    scrollcontroller.animateTo(
      offset.dy,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
