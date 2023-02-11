import 'package:flutter/material.dart';
import 'package:widgets_trabajo/widgets/widgets.dart';

import '../../widgets/pop_up_card_widgets.dart';

class DemostacionesScreen extends StatelessWidget {
  const DemostacionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            const BottomGlobalWidget(
              titleButtom: 'CONTINUAR',
              radius: 0,
            ),
            PopUpWidget(
              // paddingVertical: ,
              icon: Icons.mail,
              titlePrimary: 'Nisi commodo aliqua ea tempor reprehenderit.',
              titleSecondary:
                  'Esse qui incididunt exercitation minim minim ex nulla.',
              /* titleTertiary:
                  'Do minim laboris labore pariatur deserunt irure veniam velit esse dolore ad enim.', */
              bottomPrimary: BottomGlobalWidget(
                paddingHorizontal: 30,
                radius: 16,
                titleButtom: 'REINTENTAR',
                onPressed: () {},
              ),
              bottomSecondary: BottomGlobalWidget(
                paddingHorizontal: 30,
                paddingVertical: 10,
                radius: 16,
                color: Colors.grey,
                titleButtom: 'CANCELAR',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
