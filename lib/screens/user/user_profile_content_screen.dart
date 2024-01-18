import '../../public.dart';

class UserProfileContentScreen extends StatelessWidget {
  const UserProfileContentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GSBox(
        style: GSStyle(
          height: double.infinity,
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
          child: GSVStack(
            children: [
              GSBox(
                style: GSStyle(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.14,
                      bottom: 8),
                ),
                child: const CustomBackButton(
                  buttonText: GSStringConstants.kProfile,
                ),
              ),
              const UserProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
