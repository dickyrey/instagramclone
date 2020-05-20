import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramclone/constants.dart';
import 'package:instagramclone/models/browse_model.dart';
import 'package:instagramclone/models/category.dart';

class Browse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: SvgPicture.asset(
                    "assets/search.svg",
                    width: 25.0,
                    color: Colors.black,
                  ),
                  title: Text("Search", style: kHintStyle),
                  trailing: SvgPicture.asset(
                    "assets/scan.svg",
                    width: 25.0,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 35.0,
                  padding: EdgeInsets.only(left: 7.0),
                  child: ListView.builder(
                    itemCount: categoryList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var category = categoryList[index];

                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                        child: Row(
                          children: [
                            category.icon == null
                                ? Container()
                                : SvgPicture.asset(
                                    category.icon,
                                    width: 15.0,
                                  ),
                            SizedBox(width: 7.0),
                            Text(
                              category.name,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 8.0),
                StaggeredGridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  staggeredTiles: _staggeredTiles,
                  children: browseList
                      .map(
                        (e) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(e.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
];
