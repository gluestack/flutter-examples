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
                  imageType: GSImageType.network,
                  borderRadius: GSBorderRadius.$full,
                  size: GSSizes.$2xs,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                GSVStack(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GSText(
                      text: GSStringConstants.kUserReview[0],
                      size: GSSizes.$xs,
                      style: GSStyle(
                          textStyle: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? $GSColors.white
                            : null,
                      )),
                    ),
                    GSHStack(
                      children: [
                        GSIcon(
                            size: GSSizes.$xs,
                            style: GSStyle(color: $GSColors.yellow500),
                            icon: Icons.star),
                        GSIcon(
                            size: GSSizes.$xs,
                            style: GSStyle(color: $GSColors.yellow500),
                            icon: Icons.star),
                        GSIcon(
                          size: GSSizes.$xs,
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
              text: GSStringConstants.kUserReview[1],
              size: GSSizes.$xs,
              style: GSStyle(
                textStyle: TextStyle(
                  fontSize: 9,
                  letterSpacing: 0.2,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? $GSColors.warmGray400
                      : null,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        GSText(
          text: GSStringConstants.kUserReview[2],
          size: GSSizes.$xs,
          style: GSStyle(
              textStyle: TextStyle(
            fontSize: 9,
            letterSpacing: 0.2,
            color: Theme.of(context).brightness == Brightness.dark
                ? $GSColors.warmGray400
                : null,
          )),
        ),
      ],
    );
  }
}
