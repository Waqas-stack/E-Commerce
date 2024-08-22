import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Payment method'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              // Handle info button press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildPaymentOption('Pay with card', true),
                  _buildPaymentOption('Pay with cash', false),
                  _buildPaymentOption('Use wallet', false),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.add),
                title: Center(child: Text('Add new card')),
                onTap: () {
                  // Handle add new card tap
                },
              ),
              color: Colors.white,
            ),
            // SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 9),
                children: [
                  CreditCardWidget(
                    startColor: Colors.purple[200]!,
                    endColor: Colors.purple[300]!,
                    cardNumber: '1253\n 5432 \n3521 \n3090',
                    expDate: '09/24',
                  ),
                  SizedBox(height: 16.0),
                  CreditCardWidget(
                    startColor: Colors.orange[200]!,
                    endColor: Colors.orange[300]!,
                    cardNumber: '1253\n 5432 \n3521 \n3090',
                    expDate: '09/24',
                  ),
                  SizedBox(height: 16.0),
                  CreditCardWidget(
                    startColor: Colors.amber[200]!,
                    endColor: Colors.amber[300]!,
                    cardNumber: '1253\n 5432 \n3521 \n3090',
                    expDate: '09/24',
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle confirm button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildPaymentOption(String text, bool isSelected) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 4.0),
  //     child: Container(
  //       padding: EdgeInsets.symmetric( horizontal: 10.0),
  //       decoration: BoxDecoration(
  //         color: isSelected ? Colors.purple : Colors.grey[200],
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //       child: Row(
  //         children: [
  //           Icon(
  //             Icons.credit_card,
  //             color: isSelected ? Colors.white : Colors.black,
  //           ),
  //           SizedBox(width: 8),
  //           Text(
  //             text,
  //             style: TextStyle(
  //               color: isSelected ? Colors.white : Colors.black,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  Widget _buildPaymentOption(String text, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: isSelected ? Colors.purple : Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            children: [
              Icon(
                Icons.credit_card,
                color: isSelected ? Colors.white : Colors.black,
              ),
              SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
class CreditCardWidget extends StatelessWidget {
  final Color startColor;
  final Color endColor;
  final String cardNumber;
  final String expDate;

  CreditCardWidget({
    required this.startColor,
    required this.endColor,
    required this.cardNumber,
    required this.expDate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: Container(
        height: 177,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exp date',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              expDate,
              style: TextStyle(color: Colors.white),
            ),
            // Spacer(),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                cardNumber,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class CreditCardWidget extends StatelessWidget {
//   final Color startColor;
//   final Color endColor;
//   final String cardNumber;
//   final String expDate;
//
//   CreditCardWidget({
//     required this.startColor,
//     required this.endColor,
//     required this.cardNumber,
//     required this.expDate,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150,
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [startColor, endColor],
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//         ),
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Exp date',
//             style: TextStyle(color: Colors.white),
//           ),
//           Text(
//             expDate,
//             style: TextStyle(color: Colors.white),
//           ),
//           // Spacer(),
//           Align(
//             alignment: Alignment.topRight,
//             child: Text(
//               cardNumber,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 18,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
