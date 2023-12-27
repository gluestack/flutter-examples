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
        md: GSStyle(isVisible: true),
        lg: GSStyle(isVisible: true),
        bg: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF374151)
            : const Color(0xFFF5F3FF),
      ),
      child: SingleChildScrollView(
        child: GSVStack(
          children: [
            GSBox(
              style: GSStyle(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.23, bottom: 8),
              ),
              child: CustomBackButton(
                buttonText: GSStringConstants.kCoolStore,
                iconColor: Theme.of(context).brightness == Brightness.dark
                    ? GSStyle(color: $GSColors.white)
                    : null,
              ),
            ),
            GSBox(
              style: GSStyle(
                bg: Theme.of(context).brightness == Brightness.dark
                    ? $GSColors.black
                    : $GSColors.white,
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
