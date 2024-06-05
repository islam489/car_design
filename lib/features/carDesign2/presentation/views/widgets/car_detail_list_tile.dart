import 'package:flutter/material.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/svg.dart';
import '../../../../carDesign1/presentation/views/widgets/car_list_items.dart';
import '../../../../carDesign1/presentation/views/widgets/car_model.dart';
import 'car_list_model.dart';

class CarDetailsLisTTile extends StatelessWidget {
  const CarDetailsLisTTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<CarList> cars = [
      CarList(
        title: 'اللون الخارجي ',
        image: icoHomeAd4,
        Subtitle: 'ابيض',
      ),
      CarList(
        title: 'اللون الداخلي ',
        image: icoBook,
        Subtitle: 'بيج',
      ),
      CarList(
        title: 'نوع المقعد ',
        image: icoFav,
        Subtitle: 'مخمل',
      ),
      CarList(
        title: 'فتحة سقف',
        image: icoLocation,
        Subtitle: '✓',
      ),
      CarList(
        title: 'كاميرا خلفية ',
        image: icoChat,
        Subtitle: '✓',
      ),
      CarList(
        title: 'سينسر  ',
        image: icoSlindr,
        Subtitle: 'امامي - خلفي ',
      ),
      CarList(
        title: 'سليندر',
        image: icoSlindr,
        Subtitle: '6',
      ),
      CarList(
        title: 'ناقل حركة',
        image: icoMenu,
        Subtitle: 'اوتوماتيك',
      ),
      // Add more Car objects as needed
    ];

    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            return Container(
              color: kgray,
              child: ListTile(
                trailing: Image.asset(
                  cars[index].image,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error, color: Colors.red);
                  },
                ),
                title: Text(cars[index].title),
                subtitle: Text(cars[index].Subtitle),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: kWhite, // Customize the color and thickness of the divider
              thickness: 1.0,
            );
          },
        ),
      ),
    );
  }
}
