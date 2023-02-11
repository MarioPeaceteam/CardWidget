import 'package:flutter/material.dart';

class PopUpWidget extends StatelessWidget {
  final double? paddingHorizontal;
  final IconData? icon;
  final String? titlePrimary;
  final String? titleSecondary;
  final String? titleTertiary;
  final String? titleButtom;
  final VoidCallback? onPressed;

  const PopUpWidget({
    Key? key,
    this.paddingHorizontal = 50,
    this.icon,
    this.titlePrimary,
    this.titleSecondary,
    this.titleButtom,
    this.onPressed,
    this.titleTertiary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal!,
      ),
      child: _CardContainerWidget(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            //boton de salida
            Positioned(
              top: 20,
              right: 30,
              child: IconButton(
                onPressed: () {
                  // todo Cerra pop
                },
                icon: const Icon(
                  Icons.cancel_outlined,
                  size: 40,
                  color: Colors.black,
                ),
              ),
            ),
            // Columna de contenido
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null)
                    Icon(
                      icon!,
                      size: 70,
                      color: const Color(0xFFFF5A26),
                    ),
                  if (titlePrimary != null)
                    Text(
                      titlePrimary!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  if (titleSecondary != null)
                    Text(
                      titleSecondary!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20),
                    ),
                  if (titleTertiary != null)
                    Text(
                      titleTertiary!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 10),
                    ),
                  if (titleButtom != null)
                    RawMaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      onPressed: onPressed,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      fillColor: const Color(0xFFFF5A26),
                      child: Text(
                        titleButtom!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CardContainerWidget extends StatelessWidget {
  final Widget child;

  const _CardContainerWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container()),
        Container(
          decoration: _decoracionContenedor(),
          child: child,
        ),
        Expanded(child: Container()),
      ],
    );
  }

  BoxDecoration _decoracionContenedor() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: const [
          BoxShadow(
            color: Color(0x33FF5A26),
            offset: Offset(10, 10),
            blurRadius: 30,
          ),
        ],
      );
}
