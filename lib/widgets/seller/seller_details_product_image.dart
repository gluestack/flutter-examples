import '../../public.dart';

class SellerDetailsProductImage extends StatelessWidget {
  final double? width;
  final double? height;
  const SellerDetailsProductImage({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
          bg: $GSColors.lightBlue100,
          dark: GSStyle(bg: $GSColors.darkBlue50),
          borderRadius: 3.5,
          width: width ?? MediaQuery.of(context).size.width * 0.25,
          height: height ?? MediaQuery.of(context).size.height * 0.7,
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6)),
      child: GSImage(
        size: GSImageSizes.$md,
        fit: BoxFit.cover,
        path: GSStringConstants.kProductsDetails['imageUrl']!,
        imageType: GSImageType.asset,
      ),
    );
  }
}
