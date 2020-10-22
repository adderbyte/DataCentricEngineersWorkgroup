import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
            print("Clicked");
            Navigator.push(
                context,
               new MaterialPageRoute(builder: (context) => new SecondRoute()),
  );
          },
        ),
      ),
      ),
    );
  }
}



// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Open route'),
//           onPressed: () {
//             // Navigate to second route when tapped.
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => SecondRoute()),
//   );
//           },
//         ),
//       ),
//     );
//   }
// }

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigated page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigated Page'),
        ),
        body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
              Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
      ),
    );
  }
}
    
    
    
//     Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigate back to first route when tapped.
//               Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }

