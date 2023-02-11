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
          children: const [
            PopUpWidget(
              // paddingVertical: ,
              icon: Icons.mail,
              titlePrimary: 'Nisi commodo aliqua ea tempor reprehenderit.',
              titleSecondary:
                  'Esse qui incididunt exercitation minim minim ex nulla.',
              titleTertiary:
                  'Do minim laboris labore pariatur deserunt irure veniam velit esse dolore ad enim.',
              titleButtom: 'REINTENTAR',
            )
          ],
        ),
      ),
    );
  }
}
