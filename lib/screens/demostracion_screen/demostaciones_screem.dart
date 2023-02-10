import 'package:flutter/material.dart';
import 'package:widgets_trabajo/widgets/widgets.dart';

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
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Boton falso',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const CardWidget(
              icon: Icons.warning_amber_rounded,
              titlePrimary: '¡Las contraseñas no considen!',
              titleSecondary: 'Revisa que ambas contraseña sean iguales.',
              titleButtom: 'REINTENTAR',
            )
          ],
        ),
      ),
    );
  }
}
