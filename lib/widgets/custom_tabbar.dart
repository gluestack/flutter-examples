import 'package:flutter/material.dart';
import 'package:gluestack_demo/widgets/videos_grid.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: GSVStack(
        children: [
          GSBox(
            style: GSStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? const Color(0xFF374151)
                  : $GSColors.warmGray100,
              borderRadius: 5.0,
              height: 35,
            ),
            child: TabBar(
              padding: EdgeInsets.zero,
              dividerColor: Theme.of(context).brightness == Brightness.dark
                  ? const Color(0xFF374151)
                  : $GSColors.warmGray100,
              labelStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
              tabs: const [
                Tab(text: 'Videos'),
                Tab(text: 'Documents'),
                Tab(text: 'About'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 540,
            child: TabBarView(
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
    );
  }
}
