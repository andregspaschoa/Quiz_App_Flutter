import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Cor da sombra com opacidade
            spreadRadius: 5, // Expansão da sombra
            blurRadius: 10, // Borrão da sombra
            offset: const Offset(
                0, 4), // Deslocamento horizontal e vertical da sombra
          ),
        ],
      ),
      child: SizedBox(
        height: 330,
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map((data) {
              return Row(
                children: [
                  Container(
                    width: 50, // Define a largura do círculo
                    height: 50, // Define a altura do círculo, igual à largura
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 71, 71, 71),
                      borderRadius: BorderRadius.circular(
                          100), // Arredondamento total para criar o círculo
                    ),
                    alignment:
                        Alignment.center, // Centraliza o texto no círculo
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 249, 245, 255),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 122, 209, 249),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: GoogleFonts.poppins(
                            color: Colors.lightGreen.shade400,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 2,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.purple,
                                Colors.blue,
                                Colors.green,
                                Colors.yellow,
                                Colors.orange,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
