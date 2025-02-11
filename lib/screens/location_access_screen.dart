import 'package:eat_experts/screens/login.dart';
import 'package:flutter/material.dart';

class LocationAccessScreen extends StatelessWidget {
  const LocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.all(8),
              child: Column(children: [
                Image.asset(
                  "assets/location.png",
                  height: 300,
                ),
                SizedBox(height: 32),
                Text(
                  "Allow location access on the next screen for:",
                  style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,   
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 13, 13, 13).withOpacity(0.15),
                      ),
                      child: Icon(
                      Icons.delivery_dining_outlined,
                      color: Color.fromARGB(255, 6, 6, 6),
                      size: 30,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text("Finding the best restaurants and shops near you", 
                      style: TextStyle(
                      fontSize:16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.6),
                     ),
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 8, 8, 8).withOpacity(0.15),
                      ),
                      child: Icon(
                      Icons.store_outlined,
                      color: Color.fromARGB(255, 10, 10, 10),
                      size: 30,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text("Faster and more accurate delivery", 
                      style: TextStyle(
                      fontSize:16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.6),
                     ),
                    ),
                    ),
                  ],
                ),
              ],
              ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:  (context) => LoginScreen(),));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 8, 8, 8),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    )
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}