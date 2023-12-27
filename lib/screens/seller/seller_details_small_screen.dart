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
        bg: Theme.of(context).brightness == Brightness.dark
            ? $GSColors.black
            : $GSColors.white,
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
              text: GSStringConstants.kProductsDetails[1],
              size: GSSizes.$xs,
              style: GSStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? $GSColors.warmGray200
                    : null,
              ),
            ),
            GSText(
              text: GSStringConstants.kProductsDetails[2],
              size: GSSizes.$xs,
              style: GSStyle(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? $GSColors.white
                      : null,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GSHStack(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTitleBox(
                  description: GSStringConstants.kProductsDetails[3],
                  header: GSStringConstants.kProductsDetails[4],
                  width: MediaQuery.of(context).size.width * 0.45,
                ),
                CustomTitleBox(
                  description: GSStringConstants.kProductsDetails[5],
                  header: GSStringConstants.kProductsDetails[6],
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
