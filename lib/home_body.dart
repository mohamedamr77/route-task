import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 24 ,vertical: 12),
          child: Column(
           children: [
             Row(
               children: [
                 const Image(
                   image: AssetImage("assets/images/Logo Small2.png"),
                    width: 40,
                   height: 40,
                 ),
                 SizedBox(width: 0.04 * width),
                 Image(
                     image: const AssetImage("assets/images/AudiBooks..png"),
                   width: 0.3 *width,
                   height: 0.1* height,
                 ),
                 const Spacer(),
                 IconButton(
                   icon: const Icon(Icons.settings_outlined),
                   color: const Color(0xff4838D1),
                   onPressed: () {},
                 ),


               ],
             ),
             SizedBox(height: 0.04* height,),
              const Row(
                children: [
                  Text("Categories",
                   style: TextStyle(
                     color: Colors.black,
                      fontSize: 16,
                       fontWeight: FontWeight.w600,
                   ),
                  ),
                  Spacer(),
                  Text("See more",
                    style: TextStyle(
                      color: Color(0xff4838D1),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 4,),
                ],
              ),
             SizedBox(height: 0.025* height,),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               physics: const BouncingScrollPhysics(),
               child: Row(
                 children: List.generate(
                   categoriesList.length,
                       (index) => Padding(
                     padding: EdgeInsets.only(
                       left: index == 0 ? MediaQuery.of(context).size.width * 0.02 : 0, // Add padding to the first item
                       right: MediaQuery.of(context).size.width * 0.03, // Spacing between items
                     ),
                     child: Container(
                       decoration: BoxDecoration(
                         color: const Color(0xffF5F5FA),
                         borderRadius: BorderRadius.circular(12),
                       ),
                       padding: EdgeInsets.symmetric(
                         horizontal: MediaQuery.of(context).size.width * 0.05, // Responsive horizontal padding
                         vertical: MediaQuery.of(context).size.height * 0.02, // Responsive vertical padding
                       ),
                       child: Text(
                         categoriesList[index],
                         style: TextStyle(
                           color: const Color(0xff2E2E5D),
                           fontSize: MediaQuery.of(context).size.width * 0.04, // Responsive font size
                           fontWeight: FontWeight.w400,
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(height: 0.045* height,),
             const Row(
               children: [
                 Text("Recommended For You",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 16,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
                 Spacer(),
                 Text("See more",
                   style: TextStyle(
                     color: Color(0xff4838D1),
                     fontSize: 14,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
                 SizedBox(width: 4,),
               ],
             ),
             SizedBox(height: 0.025* height,),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               physics: const BouncingScrollPhysics(),
               child: Row(
                 children: List.generate(
                   recommendationsForYouList.length,
                       (index) => Padding(
                     padding: EdgeInsets.only(
                       left: index == 0 ? MediaQuery.of(context).size.width * 0.02 : 0, // Add padding to the first item
                       right: MediaQuery.of(context).size.width * 0.03, // Spacing between items
                     ),
                     child: Image(
                       fit: BoxFit.fill,
                       image: AssetImage(
                         recommendationsForYouList[index],),
                        width: 200,
                        height:250,
                     )
                   ),
                 ),
               ),
             ),
             SizedBox(height: 0.025* height,),
             const Row(
               children: [
                 Text("Best Seller",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 16,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
                 Spacer(),
                 Text("See more",
                   style: TextStyle(
                     color: Color(0xff4838D1),
                     fontSize: 14,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
                 SizedBox(width: 4,),
               ],
             ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               physics: const BouncingScrollPhysics(),
               child: Row(
                 children: List.generate(
                   bestSellerList.length,
                       (index) => Padding(
                       padding: EdgeInsets.only(
                         left: index == 0 ? MediaQuery.of(context).size.width * 0.02 : 0, // Add padding to the first item
                         right: MediaQuery.of(context).size.width * 0.03, // Spacing between items
                       ),
                       child: Container(
                         width: 0.8 *width,
                         padding: EdgeInsets.all(12),
                         decoration: BoxDecoration(
                           color: const Color(0xffF5F5FA),
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Row(
                           children: [
                             Image(image: AssetImage(bestSellerList[index].imagePath),width: 120,height: 120,)
                             ,
                             SizedBox(width: 16,),
                             Column(
                               children: [
                                 Text(bestSellerList[index].title, style: TextStyle(color: Color(0xff010104), fontSize: 16,fontWeight: FontWeight.w500)),
                                 SizedBox(height: 4,),
                                 Text(bestSellerList[index].description, style: TextStyle(color: Color(0xff6A6A8B), fontSize: 12))
                               ],
                             )
                           ],
                         ),

                       )
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



List<String> categoriesList =[
  "Art",
  "Business",
  "Comedy",
  "Drama",
];


List<String> recommendationsForYouList =[
  "assets/images/Image Placeholder 1.png",
  "assets/images/Image Placeholder 1 (1).png",
];


List<BestSellerModel> bestSellerList =[
  BestSellerModel(
      imagePath:"assets/images/Image Placeholder 2.png" ,
      title: "Light Mage",
      description: "Laurie Forest"),
  BestSellerModel(
      imagePath:"assets/images/Image Placeholder 2.png" ,
      title: "Light Mage",
      description: "Laurie Forest"),
  BestSellerModel(
      imagePath:"assets/images/Image Placeholder 2.png" ,
      title: "Light Mage",
      description: "Laurie Forest"),
  BestSellerModel(
      imagePath:"assets/images/Image Placeholder 2.png" ,
      title: "Light Mage",
      description: "Laurie Forest"),
];

class BestSellerModel{
  final String imagePath;
  final String title;
  final String description;

  BestSellerModel({required this.imagePath, required this.title, required this.description});
}