import '../../public.dart';

class TutorProfileScreen extends StatefulWidget {
  const TutorProfileScreen({Key? key}) : super(key: key);

  @override
  State<TutorProfileScreen> createState() => _TutorProfileScreenState();
}

class _TutorProfileScreenState extends State<TutorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GSVStack(
          children: [
            // Tutor Profile Top Bar

            const CustomTopBarWidget(
              profileImageUrl: GSStringConstants.kTutorImageUrl,
              trailingIcon: Icons.nightlight_rounded,
            ),

            //small screen UI

            const CustomTopBarSmallScreenWidget(
              backButtonText: GSStringConstants.kTutorProfile,
              trailingIcon: Icons.nightlight_rounded,
            ),

            Expanded(
              child: GSHStack(
                children: [
                  //Tutor Profile Side Drawer
                  const Flexible(
                    flex: 2,
                    child: CustomDrawerWidget(
                      profileImageUrl: GSStringConstants.kTutorImageUrl,
                      userEmail: GSStringConstants.kTutorEmail,
                      userName: GSStringConstants.kUserName,
                    ),
                  ),

                  //User Profile Main Content
                  const Flexible(
                    flex: 9,
                    child: TutorProfileContentScreen(),
                  ),

                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: GSBox(
                      style: GSStyle(
                        sm: GSStyle(
                          isVisible: true,
                        ),
                        xs: GSStyle(isVisible: true),
                        md: GSStyle(isVisible: false),
                        lg: GSStyle(isVisible: false),
                      ),
                      child: TutorProfileMainContent(
                        boxWidth: MediaQuery.of(context).size.width * 0.999,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
