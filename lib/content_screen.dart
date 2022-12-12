import 'dart:math';
import 'package:flutter/material.dart';
import 'package:impeller_issues/enums.dart';
import 'package:impeller_issues/app_icons.dart';
import 'package:lottie/lottie.dart';

class ContentScreen extends StatefulWidget {
  final ContentType contentType;
  const ContentScreen({Key? key, required this.contentType}) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.contentType == ContentType.font)
              Column(
                children: const [
                  Text(
                    'Custom Fonts rendering issue:\nSF Pro Text, Poppins, Arial rounded',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 20),

                  ///[SF Pro]
                  Text(
                    "Hello World",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontFamily: 'SF-Pro-Text',
                    ),
                  ),
                  Text(
                    "Hello World",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SF-Pro-Text',
                    ),
                  ),
                  Text(
                    "Hello World",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SF-Pro-Text',
                    ),
                  ),
                  Text(
                    "Hello World",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Text',
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(height: 50),

                  ///[Poppins]
                  Text(
                    "Hello World",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Hello World",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Hello World",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text("Hello World"),
                  SizedBox(height: 50),

                  ///[Arial rounded]
                  Text(
                    "Hello World",
                    style: TextStyle(
                      fontFamily: 'Arial',
                    ),
                  ),
                ],
              ),
            if (widget.contentType == ContentType.image)
              Image.asset('assets/avatar.png'),
            if (widget.contentType == ContentType.lottie)
              Lottie.asset(
                'assets/emoji_55.json',
                height: 75,
                width: 75,
              ),
            if (widget.contentType == ContentType.gradient)
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFA9C8F6),
                      Color(0xFF75A4EA),
                      Color(0xFF1B80F0),
                      Color(0xFF0080FF),
                    ],
                    stops: [0, 0.33, 0.58, 1.0],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    transform: GradientRotation(-pi / 1.35),
                  ),
                ),
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    height: 65,
                    width: 65,
                  ),
                ),
              ),
            if (widget.contentType == ContentType.fontIcons)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      AppIcons.navbar_stories_sel,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      AppIcons.navbar_instant_sel,
                    ),
                  ),
                  buildButton(icon: AppIcons.search, onPressed: () {}),
                  buildButton(icon: AppIcons.activity, onPressed: () {})
                ],
              ),
            if (widget.contentType == ContentType.separator)
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, __) {
                    return const SizedBox(
                      height: 50,
                    );
                  },
                  separatorBuilder: (_, __) => const ChatTileDivider(),
                  itemCount: 100,
                ),
              ),
            if (widget.contentType == ContentType.circle)
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Center(
                  child: Container(
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget buildButton({
    required VoidCallback onPressed,
    required IconData icon,
    Color? iconColor,
    bool showBorder = true,
    Color? backgroundColor,
  }) {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color(0xFF333333),
                width: 0.5,
              ),
              color: Colors.transparent,
            ),
            child: Icon(
              icon,
              size: 20,
              color: iconColor,
            ),
          ),
        ),
      );
    });
  }
}

class ChatTileDivider extends StatelessWidget {
  const ChatTileDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 6.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0xFFC6C6C5),
            width: 0.25,
          ),
        ),
      ),
    );
  }
}
