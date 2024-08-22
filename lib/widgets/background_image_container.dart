import 'package:flutter/material.dart';

class BackgroundImageContainer extends StatelessWidget {
  final Widget
      child; // Permite passar o widget que será envolvido pela imagem de fundo

  const BackgroundImageContainer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background-tech-purple.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: child, // Renderiza o widget que foi passado
    );
  }
}
