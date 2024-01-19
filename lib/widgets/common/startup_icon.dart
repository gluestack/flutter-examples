import '../../public.dart';

class StartupIcon extends StatelessWidget {
  const StartupIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        borderWidth: 1.5,
        borderRadius: 2.5,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: 20,
        width: 62,
        borderColor: $GSColors.backgroundLight800,
      ),
      child: GSHStack(
        children: [
          GSText(
            text: 'Startup',
            style: GSStyle(
              textStyle: TextStyle(
                fontSize: $GSFontSize.$2xs,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const GSIcon(
            icon: Icons.add,
            size: GSIconSizes.$xs,
          )
        ],
      ),
    );
  }
}
