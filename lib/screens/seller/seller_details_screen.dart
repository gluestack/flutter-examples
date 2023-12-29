import '../../public.dart';

class SellerDetailsScreen extends StatefulWidget {
  const SellerDetailsScreen({Key? key}) : super(key: key);

  @override
  State<SellerDetailsScreen> createState() => _SellerDetailsScreenState();
}

class _SellerDetailsScreenState extends State<SellerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: GSVStack(
            children: [
              CustomTopBarWidget(
                profileImageUrl: GSStringConstants.kUserImageUrl,
                trailingIcon: Icons.nightlight_rounded,
              ),
              //small screen UI

              CustomTopBarSmallScreenWidget(
                backButtonText: GSStringConstants.kCoolStore,
                trailingIcon: Icons.nightlight_rounded,
              ),

              SellerDetailsContentScreen(),
              //small screen UI
              SellerDetailsSmallScreen()
            ],
          ),
        ),
      ),
    );
  }
}
