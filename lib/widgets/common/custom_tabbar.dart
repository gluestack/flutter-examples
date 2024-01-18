import '../../public.dart';

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
              borderRadius: 5.0,
              height: 35,
            ),
            child: TabBar(
              padding: EdgeInsets.zero,
              dividerColor: Colors.transparent,
              labelStyle: TextStyle(
                fontSize: $GSFontSize.$xs,
                fontWeight: FontWeight.bold,
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
