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
                buttonText: GSStringConstants.kQRCode,
                iconColor: Theme.of(context).brightness == Brightness.dark
                    ? GSStyle(color: $GSColors.white)
                    : null,
                textStyle: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? $GSColors.white
                      : null,
                ),
              ),
            ),
            GSBox(
              style: GSStyle(
                padding: const EdgeInsets.fromLTRB(50, 40, 50, 100),
                bg: Theme.of(context).brightness == Brightness.dark
                    ? $GSColors.black
                    : $GSColors.white,
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.height * 0.8,
              ),
              child: GSCenter(
                child: GSBox(
                  style: GSStyle(
                    padding: const EdgeInsets.all(20.0),
                    bg: Theme.of(context).brightness == Brightness.dark
                        ? const Color(0xFF374151)
                        : const Color(0xFFF5F3FF),
                  ),
                  child: GSVStack(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GSHStack(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
            )
          ],
        ),
      ),
    );
  }
}
