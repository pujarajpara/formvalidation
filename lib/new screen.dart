import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  // Text("Name: $name"),
//             // Text("Phone: $phone"),
//             // Text("Email: $email"),
//             // Text("House No: $no"),
//             // Text("Street: $street"),
//             // Text("Area: $area"),
//             // Text("City: $city"),


final String name;
final String phone;
final String email;
final String no;
final String street;
final String area;
final String city;


  const NewScreen({
    super.key, required this.name, required this.phone, required this.email, required this.no, required this.street, required this.area, required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 150),
        child: Center(
          child: Column(
            children: [
              Text("Name:$name"),
              Text("Phone:$phone"),
              Text("Email:$email"),
              Text("No:$no"),
              Text("Street:$street"),
              Text("Area:$area"),
              Text("City:$city"),

            ],
          ),
        ),
      ),
    );
  }
}

// class NewScreen extends StatefulWidget {
//   const NewScreen({Key? key, required String city, required String area, required String no, required String street, required String email, required String phone, required String name}) : super(key: key);
//
//   @override
//   State<NewScreen> createState() => _NewScreenState();
// }
//
// class _NewScreenState extends State<NewScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Padding(
//         padding:  EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Text("Name: $name"),
//             // Text("Phone: $phon
//             e"),
//             // Text("Email: $email"),
//             // Text("House No: $no"),
//             // Text("Street: $street"),
//             // Text("Area: $area"),
//             // Text("City: $city"),
//           ],
//         ),
//       ),
//     );
//   }
// }
