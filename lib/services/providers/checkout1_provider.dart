import 'package:book_hotel_full_project/theme/imports/imports.dart';

class CheckOut1Provider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController postCodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController mobilePhoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
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
    isStep1 >= 3 ? isStep1 = 3 : isStep1;
    debugPrint(isStep1.toString());
    notifyListeners();
  }
}
