import 'package:face_detection/face_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomText(text: "İsim"),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomText(text: "Soyisim"),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomText(text: "Sicil No"),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FaceReco(),
                  ));
            },
            child: const Text("Giriş Yap"))
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: text,
          border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
    );
  }
}
