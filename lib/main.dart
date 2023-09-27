

import 'package:flutter/material.dart';
import 'package:formvalidation/new%20screen.dart';

void main() {
  runApp(const MaterialApp(
    home: FormScreen(),
  ));
}

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final no = TextEditingController();
  final street = TextEditingController();
  final area = TextEditingController();
  final city = TextEditingController();

  FocusNode one = FocusNode();
  FocusNode two = FocusNode();
  FocusNode three = FocusNode();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() {
    if (formKey.currentState?.validate() == null) {
      print("ok");
    } else {
      print("error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  focusNode: one,
                  controller: name,
                  decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter your name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  focusNode: two,
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffix: const Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter your email";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  focusNode: three,
                  controller: phone,
                  decoration: InputDecoration(
                    labelText: "Phone number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffix: const Icon(Icons.call),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter your phone number";
                    } else if (val.length < 10) {
                      return "Phone number must be 10 digits";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: no,
                  decoration: InputDecoration(
                    labelText: "House No",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffix: const Icon(Icons.home),
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  validator: (val) {
                    if (no.text.isNotEmpty) {
                      return null;
                    }
                    if (street.text.isNotEmpty ||
                        area.text.isNotEmpty ||
                        city.text.isNotEmpty) {
                      return "Enter House No";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: street,
                  decoration: InputDecoration(
                    labelText: "Street name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffix: const Icon(Icons.add_to_home_screen_outlined),
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (street.text.isNotEmpty) {
                      return null;
                    }
                    if (no.text.isNotEmpty ||
                        area.text.isNotEmpty ||
                        city.text.isNotEmpty) {
                      return "Enter your street name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: area,
                  decoration: InputDecoration(
                    labelText: "Area",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffix: const Icon(Icons.area_chart_outlined),
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (area.text.isNotEmpty) {
                      return null;
                    }
                    if (no.text.isNotEmpty ||
                        street.text.isNotEmpty ||
                        city.text.isNotEmpty) {
                      return "Enter your area";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: city,
                  decoration: InputDecoration(
                    labelText: "City",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffix: const Icon(Icons.location_city),
                  ),
                  validator: (val) {
                    if (city.text.isNotEmpty) {
                      return null;
                    }
                    if (no.text.isNotEmpty ||
                        street.text.isNotEmpty ||
                        area.text.isNotEmpty) {
                      return "Enter your city";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    focus();
                    validate();
                    if (name.text.isNotEmpty &&
                        email.text.isNotEmpty &&
                        phone.text.isNotEmpty &&
                        no.text.isEmpty &&
                        street.text.isEmpty &&
                        area.text.isEmpty &&
                        city.text.isEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewScreen(

                            name: name.text,
                            phone: phone.text,
                            email: email.text,
                            no: no.text,
                            street: street.text,
                            area: area.text,
                            city: city.text,
                          ),
                        ),
                      );
                    } else {
                      name.text.isNotEmpty &&
                              email.text.isNotEmpty &&
                              phone.text.isNotEmpty &&
                              no.text.isNotEmpty &&
                              street.text.isNotEmpty &&
                              area.text.isNotEmpty &&
                              city.text.isNotEmpty &&
                              formKey.currentState!.validate()
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewScreen(

                                  email: email.text,
                                  street: street.text,
                                  area: area.text,
                                  city: city.text,
                                  phone: phone.text,
                                  no: no.text, name: name.text,
                                ),
                              ),
                            )
                          : formKey.currentState?.validate() == null;
                    }
                  },
                  child: const Text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void focus() {
    if (name.text.isEmpty) {
      one.requestFocus();
    }

    if (email.text.isEmpty) {
      two.requestFocus();
    }

    if (phone.text.isEmpty) {
      three.requestFocus();
    }
  }
}
