import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets_trabajo/widgets/widgets.dart';

class PopUpWidget extends StatelessWidget {
  final double? paddingHorizontal;
  final double? paddingVertical;
  final String? avatarImage;
  final IconData? icon;
  final String? titlePrimary;
  final String? titleSecondary;
  final String? titleTertiary;
  final BottomGlobalWidget? bottomPrimary;
  final BottomGlobalWidget? bottomSecondary;

  const PopUpWidget({
    Key? key,
    this.paddingHorizontal = 30,
    this.paddingVertical = 0,
    this.avatarImage,
    this.icon,
    this.titlePrimary,
    this.titleSecondary,
    this.titleTertiary,
    this.bottomPrimary,
    this.bottomSecondary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal!,
        vertical: paddingVertical!,
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (avatarImage != null)
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(avatarImage!),
                    ),
                  if (icon != null)
                    Icon(
                      icon!,
                      size: 70,
                      color: const Color(0xFFFF5A26),
                      //todo cmbiar por un svg
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
                  const SizedBox(
                    height: 10,
                  ),
                  if (bottomPrimary != null)
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: bottomPrimary,
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x33FF5A26),
                                  offset: Offset(0, 5),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: bottomSecondary,
                          )
                        ],
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
