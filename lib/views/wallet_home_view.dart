import 'package:flutter/material.dart';

class WalletHomeView extends StatelessWidget {
  const WalletHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 320,
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 290,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              color: Colors.pink,
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 16,
            right: 16,
            child: Container(
              height: 110,
              color: Colors.pinkAccent,
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class WalletHomeView extends StatelessWidget {
//   const WalletHomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: 320,
//             color: Colors.purple,
//           ),
//           Container(
//             height: 300,
//             color: Colors.pink,
//           ),
//           Container(
//             height: 280,
//             color: Colors.pinkAccent,
//           ),
//         ],
//       ),
//     );
//   }
// }