import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/components/buy_full_ui_kit.dart';

import '../../../components/Banner/M/banner_m_with_counter.dart';
import '../../../components/blur_container.dart';
import '../../../components/network_image_with_loader.dart';
import '../../../components/product/product_card.dart';
import '../../../constants.dart';
import '../../../models/product_model.dart';
import '../../../route/route_constants.dart';
import '../../home/views/components/flash_sale.dart';

class OnSaleScreen extends StatefulWidget {
  const OnSaleScreen({super.key});

  @override
  State<OnSaleScreen> createState() => _OnSaleScreenState();
}

class _OnSaleScreenState extends State<OnSaleScreen> {
  late Duration _duration;
  late Timer _timer;


  @override
  void initState() {
    _duration =  Duration(hours: 8);
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _duration = Duration(seconds: _duration.inSeconds - 1);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

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
              padding: const EdgeInsets.all(16.0),
              sliver: SliverToBoxAdapter(
                child: Card(
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
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: ListTile(
                  leading: Icon(Icons.payment),
                  title: Text('Payment method'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle payment method tap
                  },
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: SwitchListTile(
                  contentPadding: EdgeInsets.all(0),
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
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverToBoxAdapter(
                child: Card(
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
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Review your order',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/product_image.png', // Replace with actual image path
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
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
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
    //     centerTitle: true,
    //     title: const Text("On Sale"),
    //     actions: [Icon(Icons.shopping_bag_outlined)],
    //     // actions: [
    //     //   IconButton(
    //     //     onPressed: () {},
    //     //     icon: SvgPicture.asset(
    //     //       "assets/icons/DotsV.svg",
    //     //       colorFilter: ColorFilter.mode(
    //     //         Theme.of(context).iconTheme.color!,
    //     //         BlendMode.srcIn,
    //     //       ),
    //     //     ),
    //     //   )
    //     // ],
    //   ),
    //   body: SafeArea(
    //     child: CustomScrollView(
    //       slivers: [
    //         SliverPadding(
    //           padding: EdgeInsets.symmetric(vertical: defaultPadding * 0.01),
    //           sliver: SliverToBoxAdapter(
    //               child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               // While loading show 👇
    //               // const BannerMWithCounterSkelton(),
    //               ///------------
    //               // BannerMWithCounter(
    //               //   duration: const Duration(hours: 8),
    //               //   text: "Super Flash Sale \n50% Off",
    //               //   press: () {},
    //               // ),
    //               ///------------
    //               AspectRatio(
    //                 aspectRatio: 4.87,
    //                 child: GestureDetector(
    //                   onTap: (){},
    //                   child: Stack(
    //                     children: [
    //                       NetworkImageWithLoader("https://i.imgur.com/pRgcbpS.png", radius: 0),
    //                       Container(color: Colors.black45),
    //                       // ...children,
    //                       Center(
    //                         child: Row(
    //                           mainAxisAlignment: MainAxisAlignment.center,
    //                           // crossAxisAlignment: CrossAxisAlignment.center,
    //                           children: [
    //                             Text(
    //                               "Super Flash Sale 50% Off",
    //                               // "waqas",
    //                               // widget.text,
    //                               textAlign: TextAlign.center,
    //                               style: const TextStyle(
    //                                 fontFamily: grandisExtendedFont,
    //                                 fontSize: 12,
    //                                 fontWeight: FontWeight.w500,
    //                                 color: Colors.white,
    //                               ),
    //                             ),
    //                             const SizedBox(width: defaultPadding),
    //                             Row(
    //                               mainAxisAlignment: MainAxisAlignment.center,
    //                               children: [
    //                                 // BlurContainer(
    //                                 //   text: _duration.inHours.toString().padLeft(2, "0"),
    //                                 // ),
    //                                 ClipRRect(
    //                                   borderRadius: const BorderRadius.all(
    //                                     Radius.circular(defaultBorderRadious / 2),
    //                                   ),
    //                                   child: BackdropFilter(
    //                                     filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
    //                                     child: Container(
    //                                       height: 30,
    //                                       width: 30,
    //                                       color: Colors.white12,
    //                                       child: Center(
    //                                         child: Text(
    //                                           _duration.inHours
    //                                               .remainder(60)
    //                                               .toString()
    //                                               .padLeft(2, "0"),
    //                                           // text,
    //                                           style: TextStyle(
    //                                             fontSize: 12,
    //                                             color: Colors.white,
    //                                             fontWeight: FontWeight.w500,
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Padding(
    //                                   padding: const EdgeInsets.symmetric(
    //                                       horizontal: defaultPadding / 4),
    //                                   child: SvgPicture.asset("assets/icons/dot.svg"),
    //                                 ),
    //                                 ClipRRect(
    //                                   borderRadius: const BorderRadius.all(
    //                                     Radius.circular(defaultBorderRadious / 2),
    //                                   ),
    //                                   child: BackdropFilter(
    //                                     filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
    //                                     child: Container(
    //                                       height: 30,
    //                                       width: 30,
    //                                       color: Colors.white12,
    //                                       child: Center(
    //                                         child: Text(
    //                                           _duration.inMinutes
    //                                               .remainder(60)
    //                                               .toString()
    //                                               .padLeft(2, "0"),
    //                                           // text,
    //                                           style: TextStyle(
    //                                             fontSize: 12,
    //                                             color: Colors.white,
    //                                             fontWeight: FontWeight.w500,
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 // BlurContainer(
    //                                 //   text: _duration.inMinutes
    //                                 //       .remainder(60)
    //                                 //       .toString()
    //                                 //       .padLeft(2, "0"),
    //                                 // ),
    //                                 Padding(
    //                                   padding: const EdgeInsets.symmetric(
    //                                       horizontal: defaultPadding / 4),
    //                                   child: SvgPicture.asset("assets/icons/dot.svg"),
    //                                 ),
    //                                 ClipRRect(
    //                                   borderRadius: const BorderRadius.all(
    //                                     Radius.circular(defaultBorderRadious / 2),
    //                                   ),
    //                                   child: BackdropFilter(
    //                                     filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
    //                                     child: Container(
    //                                       height: 30,
    //                                       width: 30,
    //                                       color: Colors.white12,
    //                                       child: Center(
    //                                         child: Text(
    //                                           _duration.inSeconds
    //                                               .remainder(60)
    //                                               .toString()
    //                                               .padLeft(2, "0"),
    //                                           // text,
    //                                           style: TextStyle(
    //                                             fontSize: 12,
    //                                             color: Colors.white,
    //                                             fontWeight: FontWeight.w500,
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 // BlurContainer(
    //                                 //   text: _duration.inSeconds
    //                                 //       .remainder(60)
    //                                 //       .toString()
    //                                 //       .padLeft(2, "0"),
    //                                 // ),
    //                               ],
    //                             )
    //                           ],
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               const SizedBox(height: defaultPadding / 2),
    //               AspectRatio(
    //                 aspectRatio: 1.27,
    //                 child: GestureDetector(
    //                   onTap: (){},
    //                   child: Stack(
    //                     children: [
    //                       NetworkImageWithLoader("https://i.imgur.com/pRgcbpS.png", radius: 0),
    //                       Container(color: Colors.black45),
    //                       // ...children,
    //                       Center(
    //                         child: Row(
    //                           mainAxisAlignment: MainAxisAlignment.center,
    //                           // crossAxisAlignment: CrossAxisAlignment.center,
    //                           children: [
    //                             Text(
    //                               "Super Flash Sale 50% Off",
    //                               // "waqas",
    //                               // widget.text,
    //                               textAlign: TextAlign.center,
    //                               style: const TextStyle(
    //                                 fontFamily: grandisExtendedFont,
    //                                 fontSize: 12,
    //                                 fontWeight: FontWeight.w500,
    //                                 color: Colors.white,
    //                               ),
    //                             ),
    //                             const SizedBox(width: defaultPadding),
    //                             Row(
    //                               mainAxisAlignment: MainAxisAlignment.center,
    //                               children: [
    //                                 // BlurContainer(
    //                                 //   text: _duration.inHours.toString().padLeft(2, "0"),
    //                                 // ),
    //                                 // ClipRRect(
    //                                 //   borderRadius: const BorderRadius.all(
    //                                 //     Radius.circular(defaultBorderRadious / 2),
    //                                 //   ),
    //                                 //   child: BackdropFilter(
    //                                 //     filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
    //                                 //     child: Container(
    //                                 //       height: 30,
    //                                 //       width: 30,
    //                                 //       color: Colors.white12,
    //                                 //       child: Center(
    //                                 //         child: Text(
    //                                 //           _duration.inHours
    //                                 //               .remainder(60)
    //                                 //               .toString()
    //                                 //               .padLeft(2, "0"),
    //                                 //           // text,
    //                                 //           style: TextStyle(
    //                                 //             fontSize: 12,
    //                                 //             color: Colors.white,
    //                                 //             fontWeight: FontWeight.w500,
    //                                 //           ),
    //                                 //         ),
    //                                 //       ),
    //                                 //     ),
    //                                 //   ),
    //                                 // ),
    //                                 // Padding(
    //                                 //   padding: const EdgeInsets.symmetric(
    //                                 //       horizontal: defaultPadding / 4),
    //                                 //   child: SvgPicture.asset("assets/icons/dot.svg"),
    //                                 // ),
    //                                 // ClipRRect(
    //                                 //   borderRadius: const BorderRadius.all(
    //                                 //     Radius.circular(defaultBorderRadious / 2),
    //                                 //   ),
    //                                 //   child: BackdropFilter(
    //                                 //     filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
    //                                 //     child: Container(
    //                                 //       height: 30,
    //                                 //       width: 30,
    //                                 //       color: Colors.white12,
    //                                 //       child: Center(
    //                                 //         child: Text(
    //                                 //           _duration.inMinutes
    //                                 //               .remainder(60)
    //                                 //               .toString()
    //                                 //               .padLeft(2, "0"),
    //                                 //           // text,
    //                                 //           style: TextStyle(
    //                                 //             fontSize: 12,
    //                                 //             color: Colors.white,
    //                                 //             fontWeight: FontWeight.w500,
    //                                 //           ),
    //                                 //         ),
    //                                 //       ),
    //                                 //     ),
    //                                 //   ),
    //                                 // ),
    //                                 // BlurContainer(
    //                                 //   text: _duration.inMinutes
    //                                 //       .remainder(60)
    //                                 //       .toString()
    //                                 //       .padLeft(2, "0"),
    //                                 // ),
    //                                 // Padding(
    //                                 //   padding: const EdgeInsets.symmetric(
    //                                 //       horizontal: defaultPadding / 4),
    //                                 //   child: SvgPicture.asset("assets/icons/dot.svg"),
    //                                 // ),
    //                                 // ClipRRect(
    //                                 //   borderRadius: const BorderRadius.all(
    //                                 //     Radius.circular(defaultBorderRadious / 2),
    //                                 //   ),
    //                                 //   child: BackdropFilter(
    //                                 //     filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
    //                                 //     child: Container(
    //                                 //       height: 30,
    //                                 //       width: 30,
    //                                 //       color: Colors.white12,
    //                                 //       child: Center(
    //                                 //         child: Text(
    //                                 //           _duration.inSeconds
    //                                 //               .remainder(60)
    //                                 //               .toString()
    //                                 //               .padLeft(2, "0"),
    //                                 //           // text,
    //                                 //           style: TextStyle(
    //                                 //             fontSize: 12,
    //                                 //             color: Colors.white,
    //                                 //             fontWeight: FontWeight.w500,
    //                                 //           ),
    //                                 //         ),
    //                                 //       ),
    //                                 //     ),
    //                                 //   ),
    //                                 // ),
    //                                 // BlurContainer(
    //                                 //   text: _duration.inSeconds
    //                                 //       .remainder(60)
    //                                 //       .toString()
    //                                 //       .padLeft(2, "0"),
    //                                 // ),
    //                               ],
    //                             )
    //                           ],
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(defaultPadding),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Text(
    //                       "Flash sale",
    //                       style: Theme.of(context).textTheme.titleSmall,
    //                     ),
    //                     Row(
    //                       children: [
    //                         ClipRRect(
    //                           borderRadius: const BorderRadius.all(
    //                             Radius.circular(defaultBorderRadious / 2),
    //                           ),
    //                           child: BackdropFilter(
    //                             filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
    //                             child: Container(
    //                               height: 30,
    //                               width: 30,
    //                               color: Colors.redAccent,
    //                               child: Center(
    //                                 child: Text(
    //                                   _duration.inHours
    //                                       .remainder(60)
    //                                       .toString()
    //                                       .padLeft(2, "0"),
    //                                   // text,
    //                                   style: TextStyle(
    //                                     fontSize: 12,
    //                                     color: Colors.white,
    //                                     fontWeight: FontWeight.w500,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.symmetric(
    //                               horizontal: defaultPadding / 4),
    //                           child: SvgPicture.asset("assets/icons/dot.svg",color: Colors.black,),
    //                         ),
    //                         ClipRRect(
    //                           borderRadius: const BorderRadius.all(
    //                             Radius.circular(defaultBorderRadious / 2),
    //                           ),
    //                           child: BackdropFilter(
    //                             filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
    //                             child: Container(
    //                               height: 30,
    //                               width: 30,
    //                               color: Colors.redAccent,
    //                               child: Center(
    //                                 child: Text(
    //                                   _duration.inMinutes
    //                                       .remainder(60)
    //                                       .toString()
    //                                       .padLeft(2, "0"),
    //                                   // text,
    //                                   style: TextStyle(
    //                                     fontSize: 12,
    //                                     color: Colors.white,
    //                                     fontWeight: FontWeight.w500,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         // BlurContainer(
    //                         //   text: _duration.inMinutes
    //                         //       .remainder(60)
    //                         //       .toString()
    //                         //       .padLeft(2, "0"),
    //                         // ),
    //                         Padding(
    //                           padding: const EdgeInsets.symmetric(
    //                               horizontal: defaultPadding / 4),
    //                           child: SvgPicture.asset("assets/icons/dot.svg",color: Colors.black,),
    //                         ),
    //                         ClipRRect(
    //                           borderRadius: const BorderRadius.all(
    //                             Radius.circular(defaultBorderRadious / 2),
    //                           ),
    //                           child: BackdropFilter(
    //                             filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
    //                             child: Container(
    //                               height: 30,
    //                               width: 30,
    //                               color: Colors.redAccent,
    //                               child: Center(
    //                                 child: Text(
    //                                   _duration.inSeconds
    //                                       .remainder(60)
    //                                       .toString()
    //                                       .padLeft(2, "0"),
    //                                   // text,
    //                                   style: TextStyle(
    //                                     fontSize: 12,
    //                                     color: Colors.white,
    //                                     fontWeight: FontWeight.w500,
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     // BlurContainer(
    //                     //   text: _duration.inHours.toString().padLeft(2, "0"),
    //                     // ),
    //
    //                     // BlurContainer(
    //                     //   text: _duration.inSeconds
    //                     //       .remainder(60)
    //                     //       .toString()
    //                     //       .padLeft(2, "0"),
    //                     // ),
    //                   ],
    //                 ),
    //               ),
    //               // While loading show 👇
    //               // const ProductsSkelton(),
    //               SizedBox(
    //                 height: 220,
    //                 child: ListView.builder(
    //                   scrollDirection: Axis.horizontal,
    //                   // Find demoFlashSaleProducts on models/ProductModel.dart
    //                   itemCount: demoFlashSaleProducts.length,
    //                   itemBuilder: (context, index) => Padding(
    //                     padding: EdgeInsets.only(
    //                       left: defaultPadding,
    //                       right: index == demoFlashSaleProducts.length - 1
    //                           ? defaultPadding
    //                           : 0,
    //                     ),
    //                     child: ProductCard(
    //                       image: demoFlashSaleProducts[index].image,
    //                       brandName: demoFlashSaleProducts[index].brandName,
    //                       title: demoFlashSaleProducts[index].title,
    //                       price: demoFlashSaleProducts[index].price,
    //                       priceAfetDiscount:
    //                           demoFlashSaleProducts[index].priceAfetDiscount,
    //                       dicountpercent:
    //                           demoFlashSaleProducts[index].dicountpercent,
    //                       press: () {
    //                         Navigator.pushNamed(
    //                             context, productDetailsScreenRoute,
    //                             arguments: index.isEven);
    //                       },
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           )),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    // return const BuyFullKit(
    //   images: ["assets/screens/On sales.png"],
    // );
  }
}

///-------------------------
///
///

// import 'package:flutter/material.dart';
//
// class OnSaleScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('On Sale'),
//         leading: Icon(Icons.arrow_back),
//         actions: [Icon(Icons.shopping_bag_outlined)],
//       ),
//       body: Column(
//         children: [
//           Stack(
//             children: [
//               Image.asset('assets/sale_banner.png', fit: BoxFit.cover),
//               Positioned(
//                 right: 16,
//                 top: 16,
//                 child: Container(
//                   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                   decoration: BoxDecoration(
//                     color: Colors.black.withOpacity(0.6),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Text(
//                     '08:34:52',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Flash Sale',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     FlashSaleItem(),
//                     FlashSaleItem(),
//                     FlashSaleItem(),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class FlashSaleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 100,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/dress.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '24% Off',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          'Lipsy London',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        SizedBox(height: 4),
        Text(
          'Printed Sleeveless Dress',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          '\$24.97',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        SizedBox(height: 4),
        Text(
          '\$53.43',
          style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              decoration: TextDecoration.lineThrough),
        ),
      ],
    );
  }
}
