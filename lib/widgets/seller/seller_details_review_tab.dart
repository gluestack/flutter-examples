import '../../public.dart';

class SellerDetailsReviewTab extends StatelessWidget {
  const SellerDetailsReviewTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSVStack(
      children: [
        GSHStack(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GSHStack(
              children: [
                const GSImage(
                  path: GSStringConstants.kUserImageUrl,
                  imageType: GSImageType.asset,
                  borderRadius: GSImageRadius.$full,
                  size: GSImageSizes.$2xs,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                GSVStack(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GSText(
                      text: GSStringConstants.kUserReview['name']!,
                      style: GSStyle(
                          textStyle: TextStyle(
                        fontSize: $GSFontSize.$2xs,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                    GSHStack(
                      children: [
                        GSIcon(
                            size: GSIconSizes.$xs,
                            style: GSStyle(color: $GSColors.yellow500),
                            icon: Icons.star),
                        GSIcon(
                            size: GSIconSizes.$xs,
                            style: GSStyle(color: $GSColors.yellow500),
                            icon: Icons.star),
                        GSIcon(
                          size: GSIconSizes.$xs,
                          style: GSStyle(color: $GSColors.yellow500),
                          icon: Icons.star,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            GSText(
              text: GSStringConstants.kUserReview['date']!,
              style: GSStyle(
                textStyle: TextStyle(
                  fontSize: $GSFontSize.$2xs,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        GSText(
          text: GSStringConstants.kUserReview['description']!,
          size: GSSizes.$2xs,
          style: GSStyle(
            dark: GSStyle(textStyle: TextStyle(color: $GSColors.warmGray400)),
          ),
        ),
      ],
    );
  }
}
