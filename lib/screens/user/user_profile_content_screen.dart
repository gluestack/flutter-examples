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
                      left: MediaQuery.of(context).size.width * 0.14,
                      bottom: 8),
                ),
                child: CustomBackButton(
                  buttonText: GSStringConstants.kProfile,
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
              const UserProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
