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
          bg: $GSColors.lightBlue100,
          dark: GSStyle(
            bg: $GSColors.darkBlue50,
          )),
      child: GSVStack(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GSText(
            text: header,
            style: GSStyle(
              textStyle: TextStyle(
                fontSize: $GSFontSize.$xs,
                color: $GSColors.purple100,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GSText(
            text: description,
            style: GSStyle(
              textStyle: TextStyle(
                fontSize: $GSFontSize.$2xs,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
