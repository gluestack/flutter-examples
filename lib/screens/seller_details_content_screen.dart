import 'package:flutter/material.dart';
import 'package:gluestack_demo/widgets/custom_back_button_widget.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class SellerDetailsContentScreen extends StatelessWidget {
  const SellerDetailsContentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.02),
          color: const Color(0xFFF5F3FF),
          isVisible: false,
          dark: GSStyle(isVisible: true)),
      child: GSVStack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.23, bottom: 8),
            //  bottom: MediaQuery.of(context).size.width * 0.1),
            child: const CustomBackButton(
              buttonText: "Cool Store",
            ),
          ),
          SingleChildScrollView(
            child: GSBox(
              style: GSStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: 3.5,
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.height * 0.8,
              ),
              child: GSHStack(children: [
                Flexible(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.035,
                    ),
                    child: GSBox(
                      style: GSStyle(
                          color: const Color(0xFFF5F3FF),
                          borderRadius: 3.5,
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.height * 0.7,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 6)),
                      child: const GSImage(
                        size: GSSizes.$md,
                        fit: BoxFit.fill,
                        path:
                            "https://images.unsplash.com/photo-1622445275463-afa2ab738c34?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        imageType: GSImageType.network,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 8,
                  child: GSBox(
                    child: GSVStack(
                      children: [
                        const GSHStack(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GSVStack(
                              children: [
                                GSText(text: "Cool Store"),
                                GSText(text: "24th Sep 2018"),
                              ],
                            ),
                            GSText(text: "4.9"),
                          ],
                        ),
                        const GSText(text: "843 Products"),
                        const GSHStack(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTitleBox(
                              description: "Postive Feedback",
                              header: '97%',
                            ),
                            CustomTitleBox(
                              description: "Customers",
                              header: '50K',
                            )
                          ],
                        ),
                        GSButton(
                          variant: GSVariants.solid,
                          style: GSStyle(
                            bg: Colors.red,
                            color: Colors.red,
                          ),
                          child: const GSText(text: "J"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTitleBox extends StatelessWidget {
  final String header;
  final String description;
  const CustomTitleBox({
    super.key,
    required this.header,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        width: 90,
        height: 45,
        borderRadius: 3.5,
        color: const Color(0xFFF5F3FF),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
              textStyle:
                  const TextStyle(fontSize: 9, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
