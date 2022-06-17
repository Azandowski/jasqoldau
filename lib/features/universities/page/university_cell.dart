import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '../domain/university.dart';

class UniversityCell extends StatelessWidget {
  final University university;
  final void Function()? onTap;

  const UniversityCell({
    Key? key,
    required this.university,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 55, 53, 53),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    university.titleKz,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 99, 213, 255),
                    ),
                  ),
                ),
                const SizedBox(width: 12.0),
                SleekCircularSlider(
                  initialValue: university.percentageOfEmployment,
                  appearance: CircularSliderAppearance(
                    size: 50.0,
                    infoProperties: InfoProperties(
                      mainLabelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text('Адрес: '),
            Text(university.addressKz),
          ],
        ),
      ),
    );
  }
}
