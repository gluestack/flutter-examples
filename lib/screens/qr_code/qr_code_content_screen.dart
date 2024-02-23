import '../../public.dart';

class QRCodeContentScreen extends StatelessWidget {
  const QRCodeContentScreen({
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
                buttonText: GSStringConstants.kQRCode,
              ),
            ),
            GSBox(
              style: GSStyle(
                padding: const EdgeInsets.fromLTRB(50, 40, 50, 100),
                dark: GSStyle(
                  bg: $GSColors.darkBlue100,
                ),
                bg: $GSColors.white,
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.height * 0.8,
              ),
              child: GSCenter(
                child: GSBox(
                  style: GSStyle(
                    padding: const EdgeInsets.all(20.0),
                    bg: $GSColors.lightBlue50,
                  ),
                  child: SingleChildScrollView(
                    child: GSVStack(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GSHStack(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GSImage(
                              path: GSStringConstants.kUserImageUrl,
                              imageType: GSImageType.asset,
                              borderRadius: GSImageRadius.$full,
                              style: GSStyle(width: 35, height: 35),
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            GSVStack(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GSText(
                                  text: GSStringConstants.kUserName,
                                  style: GSStyle(
                                    textStyle: TextStyle(
                                      fontSize: $GSFontSize.$xs,
                                      color: $GSColors.black,
                                    ),
                                  ),
                                ),
                                GSText(
                                  text: GSStringConstants.kUser,
                                  style: GSStyle(
                                    textStyle: TextStyle(
                                      fontSize: $GSFontSize.$2xs,
                                      color: $GSColors.warmGray600,
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
                          imageType: GSImageType.asset,
                          path: GSStringConstants.kQRCodeImageUrl,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
