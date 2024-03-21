import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
          button: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BuatKataSandiBaru(),
    );
  }
}

TextStyle customHeadline1 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.bold,
  fontSize: 16,
  color: Colors.black,
);

TextStyle errorTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.normal,
  fontSize: 12,
  color: Colors.black,
);

class BuatKataSandiBaru extends StatefulWidget {
  @override
  _BuatKataSandiBaruState createState() => _BuatKataSandiBaruState();
}

class _BuatKataSandiBaruState extends State<BuatKataSandiBaru> {
  bool _obsecureText = true;
  bool _obsecureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        // title: Text('Buat Kata Sandi Baru'),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 24.0,
          bottom: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Buat Kata Sandi Baru',
              style: customHeadline1,
            ),
            SizedBox(height: 16.0),
            Text(
              'Kata Sandi baru anda harus berbeda dengan kata sandi sebelumnya.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 16.0),
            Text('Kata Sandi',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: TextFormField(
                obscureText: _obsecureText,
                decoration: InputDecoration(
                  labelText: 'Kata Sandi',
                  suffixIcon: IconButton(
                    icon: Icon(_obsecureText
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 4.0),
            Text('Setidaknya harus terdiri dari 8 karakter.',
                style: errorTextStyle),
            SizedBox(height: 16.0),
            Text('Konfirmasi Kata Sandi',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: TextFormField(
                obscureText: _obsecureText2,
                decoration: InputDecoration(
                  labelText: 'Konfirmasi Kata Sandi',
                  suffixIcon: IconButton(
                    icon: Icon(_obsecureText2
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _obsecureText2 = !_obsecureText2;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 4.0),
            Text('Kedua kata sandi harus cocok.', style: errorTextStyle),
            SizedBox(height: 150.0),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 48.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.green[800],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Implement atur ulang kata sandi
                      },
                      child: Text(
                        'Atur Ulang Kata Sandi',
                        textAlign: TextAlign.center,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.blue, // Change the button color to blue
                        foregroundColor:
                            Colors.white, // Change the text color to white
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
