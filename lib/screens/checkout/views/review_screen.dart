import 'package:flutter/material.dart';
import 'package:shop/screens/checkout/views/payment_method.dart';

class ReviewScreen extends StatelessWidget {
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
        title: Text('Review'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle more actions
            },
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey.shade300, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.location_on, color: Colors.green),
                    title: Text('Office'),
                    subtitle: Text(
                        'Rio Nowakowska, Zabinec 12/222, 31-215 Cracow, Poland\n+79 123 456 789'),
                    trailing: Icon(Icons.map),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(color: Colors.grey.shade300),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: ListTile(
                  leading: Icon(Icons.payment),
                  title: Text('Payment method'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  PaymentMethodScreen()),
                    );
                    // Handle payment method tap
                  },
                ),
              ),
            ),
             SliverToBoxAdapter(
              child: Divider(color: Colors.grey.shade300,),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey.shade300, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SwitchListTile(
                    // contentPadding: EdgeInsets.all(16.0),
                    title: Text('Make it a Gift'),
                    subtitle: Text('Wrap it in a gift for \$20'),
                    value: false,
                    onChanged: (bool value) {
                      // Handle switch change
                    },
                    secondary: Icon(Icons.card_giftcard, color: Colors.purple),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey.shade300, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order Summary',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Subtotal'),
                            Text('\$24'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Shipping Fee'),
                            Text(
                              'Free',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total (Include of VAT)'),
                            Text('\$25'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Estimated VAT'),
                            Text('\$1'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Review your order',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: ListTile(
                  leading: Image.network(
                    'https://i.imgur.com/CGCyp1d.png', // Replace with actual image path
                    width: 50,
                    height: 50,
                  ),
                  title: Text('Sleeveless Tiered Dobby...'),
                  subtitle: Text('\$299.43'),
                  trailing: Text(
                    '\$534.33',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle continue button press
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50), backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Continue'),
                ),
              ),
            ),
          ],
        ),
      ),
    );


    // return Scaffold(
    //   appBar: AppBar(
    //     leading: IconButton(
    //       icon: Icon(Icons.arrow_back),
    //       onPressed: () {
    //         // Handle back button press
    //       },
    //     ),
    //     title: Text('Review'),
    //     centerTitle: true,
    //     actions: [
    //       IconButton(
    //         icon: Icon(Icons.more_vert),
    //         onPressed: () {
    //           // Handle more actions
    //         },
    //       ),
    //     ],
    //   ),
    //   body: SafeArea(
    //     child: CustomScrollView(
    //       slivers: [
    //         SliverPadding(
    //           // padding: null,
    //           padding: const EdgeInsets.symmetric(horizontal: 16.0),
    //           sliver: SliverToBoxAdapter(
    //             child: Card(
    //               child: ListTile(
    //                 leading: Icon(Icons.location_on, color: Colors.green),
    //                 title: Text('Office'),
    //                 subtitle: Text(
    //                     'Rio Nowakowska, Zabinec 12/222, 31-215 Cracow, Poland\n+79 123 456 789'),
    //                 trailing: Icon(Icons.map),
    //               ),
    //             ),
    //           ),
    //         ),
    //         SliverToBoxAdapter(
    //           child: ListTile(
    //             leading: Icon(Icons.payment),
    //             title: Text('Payment method'),
    //             trailing: Icon(Icons.arrow_forward_ios),
    //             onTap: () {
    //               // Handle payment method tap
    //             },
    //           ),
    //         ),
    //         SliverToBoxAdapter(
    //           child: SwitchListTile(
    //             contentPadding: EdgeInsets.all(0),
    //             title: Text('Make it a Gift'),
    //             subtitle: Text('Wrap it in a gift for \$20'),
    //             value: false,
    //             onChanged: (bool value) {
    //               // Handle switch change
    //             },
    //             secondary: Icon(Icons.card_giftcard, color: Colors.purple),
    //           ),
    //         ),
    //         SliverToBoxAdapter(child: SizedBox(height: 16.0)),
    //         SliverToBoxAdapter(
    //           child: Card(
    //             child: Padding(
    //               padding: const EdgeInsets.all(16.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     'Order Summary',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18,
    //                     ),
    //                   ),
    //                   SizedBox(height: 8.0),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Subtotal'),
    //                       Text('\$24'),
    //                     ],
    //                   ),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Shipping Fee'),
    //                       Text(
    //                         'Free',
    //                         style: TextStyle(color: Colors.green),
    //                       ),
    //                     ],
    //                   ),
    //                   Divider(),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Total (Include of VAT)'),
    //                       Text('\$25'),
    //                     ],
    //                   ),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Estimated VAT'),
    //                       Text('\$1'),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //         SliverToBoxAdapter(child: SizedBox(height: 16.0)),
    //         SliverToBoxAdapter(
    //           child: Text(
    //             'Review your order',
    //             style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //         SliverToBoxAdapter(child: SizedBox(height: 16.0)),
    //         SliverToBoxAdapter(
    //           child: ListTile(
    //             leading: Image.network(
    //               'https://i.imgur.com/CGCyp1d.png', // Replace with actual image path
    //               width: 50,
    //               height: 50,
    //             ),
    //             title: Text('Sleeveless Tiered Dobby...'),
    //             subtitle: Text('\$299.43'),
    //             trailing: Text(
    //               '\$534.33',
    //               style: TextStyle(
    //                 decoration: TextDecoration.lineThrough,
    //               ),
    //             ),
    //           ),
    //         ),
    //         SliverToBoxAdapter(child: SizedBox(height: 16.0)),
    //         SliverToBoxAdapter(
    //           child: ElevatedButton(
    //             onPressed: () {
    //               // Handle continue button press
    //             },
    //             style: ElevatedButton.styleFrom(
    //               minimumSize: Size(double.infinity, 50), backgroundColor: Colors.purple,
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(10),
    //               ),
    //             ),
    //             child: Text('Continue'),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );


    // return Scaffold(
    //   appBar: AppBar(
    //     leading: IconButton(
    //       icon: Icon(Icons.arrow_back),
    //       onPressed: () {
    //         // Handle back button press
    //       },
    //     ),
    //     title: Text('Review'),
    //     actions: [
    //       IconButton(
    //         icon: Icon(Icons.more_vert),
    //         onPressed: () {
    //           // Handle more actions
    //         },
    //       ),
    //     ],
    //   ),
    //   body: SafeArea(
    //     // padding: EdgeInsets.all(16.0),
    //     child: CustomScrollView(
    //       slivers: [
    //           Card(
    //             child: ListTile(
    //               leading: Icon(Icons.location_on, color: Colors.green),
    //               title: Text('Office'),
    //               subtitle: Text(
    //                   'Rio Nowakowska, Zabinec 12/222, 31-215 Cracow, Poland\n+79 123 456 789'),
    //               trailing: Icon(Icons.map),
    //             ),
    //           ),
    //           ListTile(
    //             leading: Icon(Icons.payment),
    //             title: Text('Payment method'),
    //             trailing: Icon(Icons.arrow_forward_ios),
    //             onTap: () {
    //               // Handle payment method tap
    //             },
    //           ),
    //           SwitchListTile(
    //             contentPadding: EdgeInsets.all(0),
    //             title: Text('Make it a Gift'),
    //             subtitle: Text('Wrap it in a gift for \$20'),
    //             value: false,
    //             onChanged: (bool value) {
    //               // Handle switch change
    //             },
    //             secondary: Icon(Icons.card_giftcard, color: Colors.purple),
    //           ),
    //           SizedBox(height: 16.0),
    //           Card(
    //             child: Padding(
    //               padding: const EdgeInsets.all(16.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     'Order Summary',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18,
    //                     ),
    //                   ),
    //                   SizedBox(height: 8.0),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Subtotal'),
    //                       Text('\$24'),
    //                     ],
    //                   ),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Shipping Fee'),
    //                       Text(
    //                         'Free',
    //                         style: TextStyle(color: Colors.green),
    //                       ),
    //                     ],
    //                   ),
    //                   Divider(),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Total (Include of VAT)'),
    //                       Text('\$25'),
    //                     ],
    //                   ),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text('Estimated VAT'),
    //                       Text('\$1'),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: 16.0),
    //           Text(
    //             'Review your order',
    //             style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    //           ),
    //           SizedBox(height: 16.0),
    //           ListTile(
    //             leading: Image.asset(
    //               'assets/images/product_image.png', // Replace with actual image path
    //               width: 50,
    //               height: 50,
    //             ),
    //             title: Text('Sleeveless Tiered Dobby...'),
    //             subtitle: Text('\$299.43'),
    //             trailing: Text(
    //               '\$534.33',
    //               style: TextStyle(
    //                 decoration: TextDecoration.lineThrough,
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: 16.0),
    //           ElevatedButton(
    //             onPressed: () {
    //               // Handle continue button press
    //             },
    //             style: ElevatedButton.styleFrom(
    //               minimumSize: Size(double.infinity, 50), backgroundColor: Colors.purple,
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(10),
    //               ),
    //             ),
    //             child: Text('Continue'),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
  }
}
