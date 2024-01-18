import '../../public.dart';

class SellerDetailsContentScreen extends StatelessWidget {
  const SellerDetailsContentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.02),
        xs: GSStyle(isVisible: false),
        sm: GSStyle(isVisible: false),
        md: GSStyle(
          isVisible: true,
          bg: $GSColors.lightBlue50,
        ),
        lg: GSStyle(
          isVisible: true,
          bg: $GSColors.lightBlue50,
        ),
        dark: GSStyle(
          xs: GSStyle(isVisible: false),
          sm: GSStyle(isVisible: false),
          md: GSStyle(
            isVisible: true,
            bg: $GSColors.darkBlue50,
          ),
          lg: GSStyle(
            isVisible: true,
            bg: $GSColors.darkBlue50,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: GSVStack(
          children: [
            GSBox(
              style: GSStyle(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.23, bottom: 8),
              ),
              child: const CustomBackButton(
                buttonText: GSStringConstants.kCoolStore,
              ),
            ),
            GSBox(
              style: GSStyle(
                dark: GSStyle(
                  bg: $GSColors.darkBlue200,
                ),
                bg: $GSColors.white,
                borderRadius: 3.5,
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.height * 0.8,
              ),
              child: GSHStack(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.027,
                ),
                const Flexible(
                  flex: 8,
                  child: SellerDetailsProductImage(),
                ),
                const Flexible(
                  flex: 8,
                  child: SellerDetailsProductDetails(),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
