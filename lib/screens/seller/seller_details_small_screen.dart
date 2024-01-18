import '../../public.dart';

class SellerDetailsSmallScreen extends StatelessWidget {
  const SellerDetailsSmallScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.04,
          left: 20,
          right: 20,
        ),
        xs: GSStyle(isVisible: true),
        sm: GSStyle(isVisible: true),
        md: GSStyle(isVisible: false),
        lg: GSStyle(isVisible: false),
        dark: GSStyle(
          bg: $GSColors.darkBlue100,
        ),
      ),
      child: SingleChildScrollView(
        child: GSVStack(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SellerDetailsProductImage(
              width: MediaQuery.of(context).size.width * 1.4,
              height: MediaQuery.of(context).size.width * 0.4,
            ),
            const SizedBox(
              height: 10,
            ),
            const ProductDetailsHeader(),
            GSText(
              text: GSStringConstants.kProductsDetails['date']!,
              size: GSSizes.$xs,
            ),
            GSText(
              text: GSStringConstants.kProductsDetails['products']!,
              size: GSSizes.$xs,
            ),
            const SizedBox(
              height: 10,
            ),
            GSHStack(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTitleBox(
                  description: GSStringConstants.kProductsDetails['buttonOne']!,
                  header:
                      GSStringConstants.kProductsDetails['buttonOneHeader']!,
                  width: MediaQuery.of(context).size.width * 0.45,
                ),
                CustomTitleBox(
                  description: GSStringConstants.kProductsDetails['buttonTwo']!,
                  header:
                      GSStringConstants.kProductsDetails['buttonTwoHeader']!,
                  width: MediaQuery.of(context).size.width * 0.45,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            DefaultTabController(
              length: 2,
              child: GSVStack(
                children: [
                  const GSBox(
                    child: TabBar(
                      dividerColor: Colors.transparent,
                      labelPadding: EdgeInsets.zero,
                      labelStyle: TextStyle(
                        fontSize: 12,
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.w600,
                      ),
                      tabs: [
                        Tab(text: GSStringConstants.kReviews),
                        Tab(text: GSStringConstants.kOtherItems),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.85,
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
                        const GSText(
                          text: GSStringConstants.kOtherItems,
                        ),
                      ],
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
