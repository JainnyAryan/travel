import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel/widgets/category_place_tile.dart';

class CategoryPlacesGrid extends StatelessWidget {
  const CategoryPlacesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: GridView(
        padding: const EdgeInsets.only(left: 16, right: 10),
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500,
          mainAxisExtent: 150,
          childAspectRatio: 3 / 2,
        ),
        children: [
          CategoryPlaceTile(
              title: "Kuta Beach",
              imgUrl:
                  "https://cf.bstatic.com/xdata/images/xphoto/max1440/48360989.jpg?k=9ef4c4a8cb55cf1c582a51613103dc59edcc53b025a4f465d8d57655241b46a8&o=",
              location: "Bali",
              rating: 3,
              isFavorite: true,
              desc:
                  "Lorem ipsum lorem shabnam Lorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnam",
              price: 10000),
          CategoryPlaceTile(
              title: "Baga Beach",
              imgUrl:
                  "https://i.pinimg.com/originals/09/d8/36/09d836cff4484550a75c6155888dbbba.jpg",
              location: "Goa",
              rating: 4,
              isFavorite: true,
              desc:
                  "Lorem ipsum lorem shabnam Lorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnam",
              price: 23900),
          CategoryPlaceTile(
              title: "IDK",
              imgUrl:
                  "https://escales.ponant.com/wp-content/uploads/2020/12/plage.jpg",
              location: "IDK",
              rating: 5,
              isFavorite: false,
              desc:
                  "Lorem ipsum lorem shabnam Lorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnam",
              price: 16000),
        ],
      ),
    );
  }
}
