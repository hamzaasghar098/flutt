import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';  // Amplify Auth Cognito plugin
import 'package:flutter_bloc/flutter_bloc.dart';  // Example Flutter Bloc import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Amplify
  await configureAmplify();

  runApp(MyApp());
}

Future<void> configureAmplify() async {
  try {
    await Amplify.addPlugins([
      AmplifyAuthCognito(),  // Add Auth plugin
      // Add other Amplify plugins as needed
    ]);

    await Amplify.configure(amplifyconfig);  // Provide your Amplify configuration
    print('Initialized Amplify');
  } catch (e) {
    print('Could not initialize Amplify: $e');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Amplify App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Amplify App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to your Flutter Amplify App!',
                style: TextStyle(fontSize: 20),
              ),
              // Add your UI components here
            ],
          ),
        ),
      ),
    );
  }
}

