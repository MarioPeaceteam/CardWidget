import 'dart:ui';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String titlePrimary;
  final String titleSecondary;
  final String titleButtom;
  const CardWidget(
      {Key? key,
      required this.icon,
      required this.titlePrimary,
      required this.titleSecondary,
      required this.titleButtom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(children: [
        _Filter(
          icon: icon,
          titleButtom: titleButtom,
          titlePrimary: titlePrimary,
          titleSecondary: titleSecondary,
          onPressed: () => print('hola'),
        )
      ]),
    );
  }
}

class _Filter extends StatelessWidget {
  final IconData icon;
  final String titlePrimary;
  final String titleSecondary;
  final String titleButtom;
  final VoidCallback onPressed;

  const _Filter({
    required this.icon,
    required this.titlePrimary,
    required this.titleSecondary,
    required this.titleButtom,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: .8, sigmaY: .8),
      child: Center(
        child: Container(
          margin: const EdgeInsets.only(
            top: 243,
            right: 38,
            bottom: 323,
            left: 43,
          ),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                  color: Color(0x33FF5A26),
                  offset: Offset(10, 10),
                  blurRadius: 30)
            ],
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              //boton de salida
              Positioned(
                top: 20,
                right: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cancel_outlined,
                    size: 40,
                    color: Colors.black,
                    // weight: 700,
                  ),
                ),
              ),
              // Columna de contenido
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      icon,
                      size: 70,
                      color: const Color(0xFFFF5A26),
                    ),
                    Text(
                      titlePrimary,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      titleSecondary,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20),
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      onPressed: onPressed,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: const Color(0xFFFF5A26),
                      child: const Text(
                        'titleButtom',
                        style: TextStyle(
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
      ),
    );
  }
}
