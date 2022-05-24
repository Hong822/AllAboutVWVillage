import 'package:all_about_vw_village/FoodPages/AroundRestaurants/RestaurantDetailPage.dart';
import 'package:flutter/material.dart';

class RestaurantListPage extends StatefulWidget {
  const RestaurantListPage({Key? key}) : super(key: key);

  @override
  State<RestaurantListPage> createState() => _RestaurantListPageState();
}

class _RestaurantListPageState extends State<RestaurantListPage> {
  List<List<String>> tmp = [
    [
      "공리",
      "3.5",
      "영업중 * 청담동",
      "https://lh3.googleusercontent.com/p/AF1QipNXkduEKvchSFnhqH7UZ-n1hZI1t4w680JQYtyk=w1080-h608-p-no-v0"
    ],
    [
      "명인",
      "4.5",
      "영업중 * 청담동",
      "http://www.seoulwire.com/news/photo/201904/121915_231628_4743.jpg"
    ],
    [
      "참나무집",
      "4.0",
      "영업종료 * 삼성동",
      "https://s3.ap-northeast-2.amazonaws.com/event-localnaeil/FileData/Article/201902/40de43d1-5234-4e20-ae00-0fd1221f46ba.jpg"
    ],
    [
      "장독대 김치찌개",
      "5.0",
      "영업중 * 청담동",
      "https://fastly.4sqi.net/img/general/200x200/17207889_0wVOB--PzblCz3z-Qj8CN7ZbConi82o4yxWgy7kCyBI.jpg"
    ],
    [
      "공리",
      "3.5",
      "영업중 * 청담동",
      "https://lh3.googleusercontent.com/p/AF1QipNXkduEKvchSFnhqH7UZ-n1hZI1t4w680JQYtyk=w1080-h608-p-no-v0"
    ],
    [
      "명인",
      "4.5",
      "영업중 * 청담동",
      "http://www.seoulwire.com/news/photo/201904/121915_231628_4743.jpg"
    ],
    [
      "참나무집",
      "4.0",
      "영업종료 * 삼성동",
      "https://s3.ap-northeast-2.amazonaws.com/event-localnaeil/FileData/Article/201902/40de43d1-5234-4e20-ae00-0fd1221f46ba.jpg"
    ],
    [
      "장독대 김치찌개",
      "5.0",
      "영업중 * 청담동",
      "https://fastly.4sqi.net/img/general/200x200/17207889_0wVOB--PzblCz3z-Qj8CN7ZbConi82o4yxWgy7kCyBI.jpg"
    ]
  ];

  // tmp.add(r1);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final imageWidth = size.width / 3;
    final imageHeight = size.height / tmp.length;

    return Scaffold(
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: tmp.length,
          itemBuilder: (context, index) {
            String Detail =
                tmp[index][0] + ", " + tmp[index][1]; // + "\n" + tmp[index][2];
            print(Detail);
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RestaurantDetailPage()),
                );
              },
              leading: Image.network(
                tmp[index][3],
                width: imageWidth,
                fit: BoxFit.scaleDown,
              ),
              title: Text(Detail),
              subtitle: Text(tmp[index][2]),
            );
          }),
    );
  }
}
