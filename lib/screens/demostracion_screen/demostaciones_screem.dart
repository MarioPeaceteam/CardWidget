import 'package:flutter/material.dart';
import 'package:widgets_trabajo/widgets/widgets.dart';

import '../../widgets/pop_up_card_widgets.dart';

class DemostacionesScreen extends StatelessWidget {
  const DemostacionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: const [
            PopUpWidget(
              icon: Icons.mark_email_read,
              titlePrimary: 'Tu oferta con  @Negroni ha sido suspendida.',
              titleSecondary:
                  'Sentimos las molestias! puedes encontrar nuevas ofertas en el home.',
              bottomPrimary: BottomGlobalWidget(
                paddingVertical: 10,
                paddingHorizontal: 34,
                titleButtom: 'CONTINUAR',
              ),
              bottomSecondary: BottomGlobalWidget(
                paddingHorizontal: 34,
                paddingVertical: 10,
                titleButtom: 'CANCELAR',
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
