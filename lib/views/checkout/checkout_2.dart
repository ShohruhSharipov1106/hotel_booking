import 'package:book_hotel_full_project/theme/imports/imports.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Column checkOut2(BuildContext context) => Column(
      children: [
        Stack(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: kOrangeGradient,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SizedBox(
                height: getHeight(198.0),
                width: getWidth(339.0),
              ),
            ),
            Positioned(
              child: SvgPicture.asset(
                "assets/icons/checkout/shtrix_code.svg",
                height: getHeight(30.0),
                width: getWidth(42.0),
              ),
              top: getHeight(21.67),
              left: getWidth(25.0),
            ),
            Positioned(
              child: SvgPicture.asset(
                "assets/icons/checkout/visa-logo.svg",
                height: getHeight(24.08),
                width: getWidth(75.08),
              ),
              top: getHeight(22.0),
              right: getWidth(18.67),
            ),
            Positioned(
              child: Text(
                context
                        .watch<CheckOut1Provider>()
                        .cardNumberController
                        .text
                        .isEmpty
                    ? "1234 5678 9123 4567"
                    : context
                            .watch<CheckOut1Provider>()
                            .cardNumberController
                            .text
                            .substring(0, 4) +
                        " " +
                        context
                            .watch<CheckOut1Provider>()
                            .cardNumberController
                            .text
                            .substring(4, 8) +
                        " " +
                        context
                            .watch<CheckOut1Provider>()
                            .cardNumberController
                            .text
                            .substring(8, 12) +
                        " " +
                        context
                            .watch<CheckOut1Provider>()
                            .cardNumberController
                            .text
                            .substring(12, 16),
                style: const TextStyle(
                  fontFamily: "Dosis",
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                  color: kWhite,
                ),
              ),
              top: getHeight(100.58),
              left: getWidth(21.67),
            ),
            Positioned(
              child: Text(
                context.watch<CheckOut1Provider>().nameController.text.isEmpty
                    ? ("MARK DOE")
                    : context
                        .watch<CheckOut1Provider>()
                        .nameController
                        .text
                        .toString(),
                style: const TextStyle(
                  fontFamily: "Dosis",
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                  color: kWhite,
                ),
              ),
              bottom: getHeight(20.42),
              left: getWidth(21.67),
            ),
            Positioned(
              child: Text(
                context.watch<CheckOut1Provider>().expiryController.text.isEmpty
                    ? "00/00"
                    : context
                            .watch<CheckOut1Provider>()
                            .expiryController
                            .text
                            .substring(0, 2) +
                        "/" +
                        context
                            .watch<CheckOut1Provider>()
                            .expiryController
                            .text
                            .substring(2, 4),
                style: const TextStyle(
                  fontFamily: "Dosis",
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                  color: kWhite,
                ),
              ),
              bottom: getHeight(20.42),
              left: getWidth(252.67),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(27.0),
            bottom: getHeight(21.0),
            left: getWidth(12.0),
            right: getWidth(12.0),
          ),
          child: Form(
            key: context.watch<CheckOut1Provider>().formKey2,
            child: Column(
              children: [
                _inputFieldCard2(
                  context,
                  "Card Number",
                  TextInputType.number,
                  context.watch<CheckOut1Provider>().cardNumberController,
                  getWidth(336.0),
                  getHeight(50.0),
                  16,
                  isMaxLengthEnforcement: MaxLengthEnforcement.enforced,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: getHeight(17.0),
                    top: getHeight(19.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _inputFieldCard2(
                        context,
                        "Expiry",
                        TextInputType.number,
                        context.watch<CheckOut1Provider>().expiryController,
                        getWidth(155.0),
                        getHeight(50.0),
                        4,
                        isMaxLengthEnforcement: MaxLengthEnforcement.enforced,
                      ),
                      _inputFieldCard2(
                          context,
                          "CVV",
                          TextInputType.number,
                          context.watch<CheckOut1Provider>().cvvController,
                          getWidth(155.0),
                          getHeight(50.0),
                          4),
                    ],
                  ),
                ),
                _inputFieldCard2(
                    context,
                    "Name",
                    TextInputType.name,
                    context.watch<CheckOut1Provider>().nameController,
                    getWidth(336.0),
                    getHeight(50.0),
                    100),
              ],
            ),
          ),
        ),
        NeumorphicCheckbox(
          style: NeumorphicCheckboxStyle(
            disabledColor: kPinkText,
            // selectedColor: kShadowColor,
            unselectedDepth: -5,
            selectedIntensity: 0.7,
            selectedDepth: -5,
          ),
          value: context.watch<CheckOut1Provider>().savingCreditCard,
          onChanged: (v) =>
              context.read<CheckOut1Provider>().toSaveCreditCard(),
        )
      ],
    );

Neumorphic _inputFieldCard2(
    BuildContext context,
    String hintField,
    TextInputType inputType,
    TextEditingController kontroller,
    double sizeWidth,
    double sizeHeight,
    int maxLengthValue,
    {MaxLengthEnforcement isMaxLengthEnforcement = MaxLengthEnforcement.none}) {
  return Neumorphic(
    style: const NeumorphicStyle(
      boxShape: NeumorphicBoxShape.stadium(),
      depth: -5,
      color: kInputField,
      intensity: 1.0,
      shadowDarkColorEmboss: kShadowColor,
      shadowLightColorEmboss: kWhite,
      shadowDarkColor: kShadowColor,
      shadowLightColor: kWhite,
    ),
    padding: EdgeInsets.only(
      left: getWidth(14.0),
    ),
    child: SizedBox(
      height: sizeHeight,
      width: sizeWidth,
      child: TextFormField(
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        maxLength: maxLengthValue,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintField,
          counterText: "",
          hintStyle: const TextStyle(
            color: kGrayDark,
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
          ),
        ),
        keyboardType: inputType,
        controller: kontroller,
      ),
    ),
  );
}
