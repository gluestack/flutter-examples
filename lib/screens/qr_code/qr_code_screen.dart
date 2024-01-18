import '../../public.dart';

class QRCodeScreen extends StatefulWidget {
  const QRCodeScreen({Key? key}) : super(key: key);

  @override
  State<QRCodeScreen> createState() => _QRCodeScreenState();
}

class _QRCodeScreenState extends State<QRCodeScreen> {
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
                backButtonText: GSStringConstants.kQRCode,
                trailingIcon: Icons.nightlight_rounded,
              ),

              QRCodeContentScreen(),
              //small screen UI
              QRCodeSmallScreen()
            ],
          ),
        ),
      ),
    );
  }
}
