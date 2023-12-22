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
          size: GSSizes.$xs,
          style:
              GSStyle(textStyle: const TextStyle(fontWeight: FontWeight.w600)),
        ),
        GSHStack(
          children: [
            GSIcon(
                size: GSSizes.$xs,
                style: GSStyle(color: $GSColors.yellow500),
                icon: Icons.star),
            GSText(
              text: "4.9",
              size: GSSizes.$xs,
              style: GSStyle(
                  textStyle: const TextStyle(fontWeight: FontWeight.w600)),
            ),
            GSText(
              text: "(120)",
              size: GSSizes.$xs,
              style: GSStyle(
                  textStyle: const TextStyle(
                fontSize: 10,
              )),
            ),
          ],
        ),
      ],
    );
  }
}
