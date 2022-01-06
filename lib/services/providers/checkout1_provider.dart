import 'package:book_hotel_full_project/theme/imports/imports.dart';

class CheckOut1Provider extends ChangeNotifier {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController postCodeController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController mobilePhoneController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final formKey2 = GlobalKey<FormState>();
  final formKey = GlobalKey<FormState>();
  bool savingCreditCard = false;
  int isStep1 = 1;
  

  nameValidate(nameText) {
    if (nameText.isEmpty && nameText.length > 5) {
      return "This field has fulled incorrectly. Please fullfill correctly.";
    }
  }

  phoneNumberValidate(phoneNumber) {
    if (phoneNumber.length < 7) {
      return "Please enter more characters in this field";
    }
    notifyListeners();
  }

  emailValidate(emailText) {
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailText)) {
      return "Incorrect email. Please input correct email form!";
    }
    notifyListeners();
  }

  incrementstepper() {
    isStep1 += 1;
    // isStep1 >= 3 ? isStep1 = 3 : isStep1 += 1;
    debugPrint(isStep1.toString());
    notifyListeners();
  }

  toSaveCreditCard() {
    savingCreditCard = !savingCreditCard;
    notifyListeners();
  }
}
