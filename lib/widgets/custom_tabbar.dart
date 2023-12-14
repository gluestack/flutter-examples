import 'package:flutter/material.dart';
import 'package:gluestack_demo/widgets/videos_grid.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: GSVStack(
          children: [
            GSBox(
              style: GSStyle(
                color: $GSColors.warmGray100,
                borderRadius: 5.0,
                height: 35,
              ),
              child: const TabBar(
                padding: EdgeInsets.zero,
                dividerColor: $GSColors.warmGray100,
                labelStyle: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
                tabs: [
                  Tab(text: 'Videos'),
                  Tab(text: 'Documents'),
                  Tab(text: 'About'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.38,
              child: const TabBarView(
                children: [
                  VideosGrid(),
                  GSCenter(
                    child: GSText(
                      text: 'Documents Section',
                    ),
                  ),
                  GSCenter(
                    child: GSText(
                      text: 'About section',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
