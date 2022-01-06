import 'package:book_hotel_full_project/theme/imports/imports.dart';

class CheckOut1 extends StatelessWidget {
  const CheckOut1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: _checkout1AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidth(110.0),
                vertical: getHeight(40.0),
              ),
              child: Row(
                children: [
                  _stepperCheckout1(
                    context,
                    "1",
                    kPinkText,
                    5,
                  ),
                  _stepperDivider(
                    context,
                    context.watch<CheckOut1Provider>().isStep1 > 2
                        ? kPinkText
                        : kGray,
                  ),
                  _stepperCheckout1(
                    context,
                    "2",
                    context.watch<CheckOut1Provider>().isStep1 > 1
                        ? kPinkText
                        : kGrayDark,
                    context.watch<CheckOut1Provider>().isStep1 > 1 ? 5 : -5,
                  ),
                  _stepperDivider(
                    context,
                    context.watch<CheckOut1Provider>().isStep1 > 2
                        ? kPinkText
                        : kGray,
                  ),
                  _stepperCheckout1(
                    context,
                    "3",
                    context.watch<CheckOut1Provider>().isStep1 > 2
                        ? kPinkText
                        : kGrayDark,
                    context.watch<CheckOut1Provider>().isStep1 > 2 ? 5 : -5,
                  ),
                ],
              ),
            ),
            context.watch<CheckOut1Provider>().isStep1 == 1
                ? Form(
                    key: context.watch<CheckOut1Provider>().formKey,
                    child: Column(
                      children: [
                        // FIRST NAME FIELD

                        _inputFieldCard(
                          context,
                          "First Name",
                          TextInputType.name,
                          context
                              .watch<CheckOut1Provider>()
                              .firstNameController,
                          (value) =>
                              context.read<CheckOut1Provider>().nameValidate(
                                    value,
                                  ),
                        ),

                        // LAST NAME FIELD

                        _inputFieldCard(
                          context,
                          "Last Name",
                          TextInputType.name,
                          context.watch<CheckOut1Provider>().lastNameController,
                          (value) => context
                              .read<CheckOut1Provider>()
                              .nameValidate(value),
                        ),

                        // EMAIL ADDRESS FIELD

                        _inputFieldCard(
                          context,
                          "Email Address",
                          TextInputType.emailAddress,
                          context.watch<CheckOut1Provider>().emailController,
                          (value) => context
                              .read<CheckOut1Provider>()
                              .emailValidate(value),
                        ),

                        // ADDRESS FIELD
                        _inputFieldCard(
                          context,
                          "Address",
                          TextInputType.streetAddress,
                          context.watch<CheckOut1Provider>().addressController,
                          (value) => context
                              .read<CheckOut1Provider>()
                              .nameValidate(value),
                        ),

                        // POST CODE FIELD

                        _inputFieldCard(
                          context,
                          "Post Code",
                          TextInputType.number,
                          context.watch<CheckOut1Provider>().postCodeController,
                          (value) => context
                              .read<CheckOut1Provider>()
                              .nameValidate(value),
                        ),

                        // COUNTRY FIELD

                        _inputFieldCard(
                          context,
                          "Country",
                          TextInputType.name,
                          context.watch<CheckOut1Provider>().countryController,
                          (value) => context
                              .read<CheckOut1Provider>()
                              .nameValidate(value),
                        ),

                        // MOBILE PHONE FIELD

                        _inputFieldCard(
                          context,
                          "Mobile Phone",
                          TextInputType.phone,
                          context
                              .watch<CheckOut1Provider>()
                              .mobilePhoneController,
                          (value) => context
                              .read<CheckOut1Provider>()
                              .phoneNumberValidate(value),
                        ),
                      ],
                    ),
                  )
                : (context.watch<CheckOut1Provider>().isStep1 == 2
                    ? checkOut2(context)
                    : checkOut3()),
            _goToPayment(context),
          ],
        ),
      ),
    );
  }

  SizedBox _stepperDivider(
    BuildContext context,
    Color dividerColor,
  ) {
    return SizedBox(
      child: Divider(
        color: dividerColor,
        thickness: 2.0,
      ),
      width: getWidth(25.0),
    );
  }

  Neumorphic _stepperCheckout1(
    BuildContext context,
    String stepperTitle,
    Color textColor,
    double cardDepth,
  ) {
    return Neumorphic(
      style: NeumorphicStyle(
        boxShape: const NeumorphicBoxShape.circle(),
        depth: cardDepth,
        intensity: 1.0,
        color: kInputField,
        shadowDarkColorEmboss: kShadowColor,
        shadowLightColorEmboss: kWhite,
        shadowDarkColor: kShadowColor,
        shadowLightColor: kWhite,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(12.0),
        vertical: getHeight(12.0),
      ),
      child: Text(
        stepperTitle,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18.0,
          color: textColor,
        ),
      ),
    );
  }

  InkWell _goToPayment(BuildContext context) {
    return InkWell(
      child: Container(
        height: getHeight(70.0),
        width: getWidth(338.0),
        margin: EdgeInsets.only(
          top: getHeight(30.0),
          left: getWidth(18.0),
          right: getWidth(19.0),
          bottom: getHeight(24.0),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          gradient: kOrangeGradient,
        ),
        child: const Center(
          child: Text(
            "Go to Payment",
            style: TextStyle(
              color: kWhite,
              fontWeight: FontWeight.w800,
              fontSize: 24.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () {
        _goPaymentFunc(context);
      },
    );
  }

  _goPaymentFunc(BuildContext context) {
    if (context.read<CheckOut1Provider>().formKey.currentState!.validate()) {
      context.read<CheckOut1Provider>().incrementstepper();
    }
  }

  AppBar _checkout1AppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: kBlackText,
          size: 22.0,
        ),
        onPressed: () {},
      ),
      title: const Text(
        "Reservation",
      ),
    );
  }

  Neumorphic _inputFieldCard(
    BuildContext context,
    String hintField,
    TextInputType inputType,
    TextEditingController kontroller,
    validation,
  ) {
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
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(18.0),
      ),
      margin: EdgeInsets.symmetric(
        vertical: getHeight(9.0),
      ),
      child: SizedBox(
        height: getHeight(50.0),
        width: getWidth(300.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintField,
            hintStyle: const TextStyle(
              color: kGrayDark,
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
            ),
          ),
          keyboardType: inputType,
          controller: kontroller,
          validator: (value) {
            validation(value);
          },
        ),
      ),
    );
  }
}
