import 'package:flutter/material.dart';
import 'package:pieno/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    //ChangeNotifierProvider(
    // create: (context) => AppState(),
    const MyApp(),
    //),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(context),
      home: const Entrypoint(),
    );
  }
}

class Entrypoint extends StatelessWidget {
  const Entrypoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ciao",
        ),
        backgroundColor: Colors.blue[500],
      ),
      body: WidgetCheSiAggiorna(),
    );
  }
}

class WidgetCheSiAggiorna extends StatefulWidget {
  const WidgetCheSiAggiorna({
    super.key,
  });

  @override
  State<WidgetCheSiAggiorna> createState() => _WidgetCheSiAggiornaState();
}

class _WidgetCheSiAggiornaState extends State<WidgetCheSiAggiorna> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Effettua il login, boss",
              style: theme.textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                border: Border.all(
                  color: const Color(0xffEDEDED),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextFormField(),
            ),
          ],
        ),
      ),
    );
  }
}
