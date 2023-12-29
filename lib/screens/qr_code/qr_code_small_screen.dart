import '../../public.dart';

class QRCodeSmallScreen extends StatelessWidget {
  const QRCodeSmallScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.08,
          left: 10,
          right: 10,
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
        children: [
          GSBox(
            style: GSStyle(
              //  padding: const EdgeInsets.fromLTRB(50, 40, 50, 100),
              bg: Theme.of(context).brightness == Brightness.dark
                  ? $GSColors.black
                  : $GSColors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
            ),
            child: GSCenter(
              child: GSBox(
                style: GSStyle(
                  width: MediaQuery.of(context).size.height * 0.5,
                  height: MediaQuery.of(context).size.height * 0.8,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  bg: Theme.of(context).brightness == Brightness.dark
                      ? const Color(0xFF374151)
                      : const Color(0xFFF5F3FF),
                ),
                child: GSVStack(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GSVStack(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GSImage(
                          path: GSStringConstants.kUserImageUrl,
                          imageType: GSImageType.network,
                          borderRadius: GSBorderRadius.$full,
                          style: GSStyle(width: 35, height: 35),
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GSVStack(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GSText(
                              text: GSStringConstants.kUserName,
                              style: GSStyle(
                                  textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? $GSColors.white
                                    : null,
                              )),
                            ),
                            GSText(
                              text: GSStringConstants.kUser,
                              style: GSStyle(
                                textStyle: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? $GSColors.warmGray500
                                      : null,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GSImage(
                      style: GSStyle(
                        width: 150.0,
                        height: 150.0,
                      ),
                      fit: BoxFit.cover,
                      imageType: GSImageType.network,
                      path: GSStringConstants.kQRCodeImageUrl,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          GSButton(
            variant: GSVariants.solid,
            size: GSSizes.$lg,
            child: GSText(
              text: GSStringConstants.kScanner,
              style: GSStyle(textStyle: TextStyle(color: $GSColors.white)),
            ),
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
