import 'package:flutter/material.dart';
import 'package:impeller_issues/content_screen.dart';
import 'package:impeller_issues/enums.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContentScreen(
                    contentType: ContentType.font,
                  ),
                ),
              ),
              child: const Text("Font"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContentScreen(
                    contentType: ContentType.separator,
                  ),
                ),
              ),
              child: const Text("Separator"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContentScreen(
                    contentType: ContentType.lottie,
                  ),
                ),
              ),
              child: const Text("Lottie"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContentScreen(
                    contentType: ContentType.fontIcons,
                  ),
                ),
              ),
              child: const Text("Font icons"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContentScreen(
                    contentType: ContentType.image,
                  ),
                ),
              ),
              child: const Text("Image"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContentScreen(
                    contentType: ContentType.gradient,
                  ),
                ),
              ),
              child: const Text("Gradient"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContentScreen(
                    contentType: ContentType.circle,
                  ),
                ),
              ),
              child: const Text("Circle"),
            ),
          ],
        ),
      ),
    );
  }
}
