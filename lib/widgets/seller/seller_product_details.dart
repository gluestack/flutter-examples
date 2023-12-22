import '../../public.dart';

class SellerDetailsProductDetails extends StatelessWidget {
  const SellerDetailsProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30)),
      child: ListView(
        children: [
          const ProductDetailsHeader(),
          GSText(
            text: "24th Sep 2018",
            size: GSSizes.$xs,
            style: GSStyle(),
          ),
          GSText(
            text: "843 Products",
            size: GSSizes.$xs,
            style: GSStyle(
                textStyle: const TextStyle(fontWeight: FontWeight.w600)),
          ),
          const SizedBox(
            height: 10,
          ),
          const GSHStack(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTitleBox(
                description: "Postive Feedback",
                header: '97%',
              ),
              CustomTitleBox(
                description: "Customers",
                header: '50K',
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GSButton(
            variant: GSVariants.solid,
            style: GSStyle(md: GSStyle(width: 200)),
            child: const GSText(text: "CONTINUE"),
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          DefaultTabController(
            length: 2,
            child: GSVStack(
              children: [
                GSBox(
                  child: TabBar(
                    dividerColor:
                        Theme.of(context).brightness == Brightness.dark
                            ? $GSColors.black
                            : $GSColors.white,
                    labelPadding: EdgeInsets.zero,
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.w600,
                    ),
                    tabs: const [
                      Tab(text: 'Reviews'),
                      Tab(text: 'Other Items'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return GSBox(
                            style: GSStyle(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                            ),
                            child: const SellerDetailsReviewTab(),
                          );
                        },
                      ),
                      const GSCenter(
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
        ],
      ),
    );
  }
}
