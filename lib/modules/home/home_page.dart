import 'package:flutter/material.dart';
import 'package:flutter_dynamic_staggered_grid_view/flutter_dynamic_staggered_grid_view.dart';
import 'package:flutter_new/core/assets/image_assets.dart';
import 'package:flutter_new/core/theme/app_textstyles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.black,
          child: const Text(
            'DISCOVER',
            style: AppTextstyles.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          children: [
            const Text(
              'WHAT`S NEW TODAY',
              style: AppTextstyles.s18w500,
            ),
            SizedBox.fromSize(
              size: const Size.fromRadius(5),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ImageAssets.images.length,
                itemBuilder: (context, index) {
                  return buildItem(
                      index: index,
                      images: ImageAssets.images.reversed.toList());
                },
              ),
            ),
            SizedBox.fromSize(
              size: const Size.fromRadius(7),
            ),
            const Text(
              'BROWSE ALL',
              style: AppTextstyles.s18w500,
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: ImageAssets.images.length,
                itemBuilder: (BuildContext context, int index) =>
                    buildItem(index: index, images: ImageAssets.images),
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.count(2, index.isOdd ? 3 : 2),
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue.shade300,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}

Widget buildItem({
  required int index,
  required List<String> images,
}) {
  return Container(
    width: 300,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          images[index],
        ),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(6),
    ),
  );
}
