import '../../public.dart';

class CustomTitleBox extends StatelessWidget {
  final String header;
  final String description;
  final double? width;
  const CustomTitleBox({
    super.key,
    required this.header,
    required this.description,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        width: width ?? MediaQuery.of(context).size.width * 0.115,
        height: 48,
        borderRadius: 2.5,
        bg: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF374151)
            : const Color(0xFFF5F3FF),
      ),
      child: GSVStack(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GSText(
            text: header,
            style: GSStyle(
              textStyle: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w900),
            ),
          ),
          GSText(
            text: description,
            style: GSStyle(
              textStyle: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w300,
                color: Theme.of(context).brightness == Brightness.dark
                    ? $GSColors.white
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
