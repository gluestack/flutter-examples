import '../../public.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSHStack(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GSText(
          text: GSStringConstants.kCoolStore,
          style: GSStyle(
              textStyle: TextStyle(
            fontSize: $GSFontSize.$xs,
            fontWeight: FontWeight.bold,
          )),
        ),
        GSHStack(
          children: [
            GSIcon(
                size: GSSizes.$xs,
                style: GSStyle(color: $GSColors.yellow500),
                icon: Icons.star),
            GSText(
              text: "4.9",
              style: GSStyle(
                  textStyle: TextStyle(
                fontSize: $GSFontSize.$xs,
                fontWeight: FontWeight.bold,
              )),
            ),
            GSText(
              text: "(120)",
              style: GSStyle(
                  textStyle: TextStyle(
                fontSize: $GSFontSize.$2xs,
              )),
            ),
          ],
        ),
      ],
    );
  }
}
