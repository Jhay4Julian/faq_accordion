import 'package:flutter/material.dart';

class FaqCard extends StatefulWidget {
  final String question;
  final String answer;

  const FaqCard({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  State<FaqCard> createState() => _FaqCardState();
}

class _FaqCardState extends State<FaqCard> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(-3, 3),
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(3, -3),
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                flag = !flag;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.question,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
                Container(
                  child: flag
                      ? const Icon(Icons.add_circle, size: 30)
                      : const Icon(Icons.remove_circle, size: 30),
                ),
              ],
            ),
          ),
          flag
              ? const SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    widget.answer,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      letterSpacing: 1,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
