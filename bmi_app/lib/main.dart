import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BMI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
   var result = "";

   var bgColor = Colors.purple.shade100;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Let's calculate your BMI!"),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Enter your weight in KGs"),
                    prefixIcon: Icon(Icons.monitor_weight)
                  ),
                  controller: wtController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Enter your height in feet"),
                    prefixIcon: Icon(Icons.height)
                  ),
                  controller: ftController,
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text("Enter your height in inches"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple
                  ),
                    onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    var inch = inController.text.toString();

                    if(wt!="" && ft!="" && inch!="") {
                      // BMI calculation here
                      int iWt = int.parse(wt);
                      int iFt = int.parse(ft);
                      int iInch = int.parse(inch);

                      var tInch = (iFt * 12) + iInch;
                      var tCm = tInch * 2.54;
                      var tM = tCm/100;

                      var bmi = iWt/(tM*tM);

                      var msg = "";

                      if(bmi > 25) {
                        msg = "hmm, you need to start dieting";
                        bgColor = Colors.redAccent;
                      } else if(bmi < 18) {
                        msg = "eat well";
                        bgColor = Colors.red;
                      } else {
                        msg = "cool!!";
                        bgColor = Colors.green;
                      }


                      setState(() {
                        result = "Your BMI is ${bmi.toStringAsFixed(2)} \n $msg";
                      });

                    } else {
                      setState(() {
                        result = "You did not select something";
                      });
                    }

                    }, child: Text("Find out", style: TextStyle(color: Colors.white),)),
                Text("$result")
              ],
            ),
          ),
        ),
      )
    );
  }
}
