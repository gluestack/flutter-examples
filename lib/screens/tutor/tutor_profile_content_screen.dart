import '../../public.dart';

class TutorProfileContentScreen extends StatelessWidget {
  const TutorProfileContentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GSBox(
        style: GSStyle(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.02),
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
          physics: const NeverScrollableScrollPhysics(),
          child: GSVStack(
            children: [
              GSBox(
                style: GSStyle(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.11,
                      bottom: 8),
                ),
                child: const CustomBackButton(
                  buttonText: GSStringConstants.kTutorProfile,
                ),
              ),
              const TutorProfileMainContent(),
            ],
          ),
        ),
      ),
    );
  }
}
