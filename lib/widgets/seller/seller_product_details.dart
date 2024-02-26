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
          const GSText(
            text: "24th Sep 2018",
            size: GSSizes.$xs,
          ),
          GSText(
            text: "843 Products",
            size: GSSizes.$xs,
            style: GSStyle(
                textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            )),
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
            style: GSStyle(width: double.infinity),
            variant: GSButtonVariants.solid,
            child: GSText(
              text: GSStringConstants.kContinue,
              style: GSStyle(
                  textStyle: TextStyle(
                color: $GSColors.white,
              )),
            ),
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
                    dividerColor: Colors.transparent,
                    labelPadding: EdgeInsets.zero,
                    labelStyle: TextStyle(
                      fontSize: $GSFontSize.$xs,
                      fontWeight: FontWeight.bold,
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
