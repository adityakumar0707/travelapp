import 'package:flutter/material.dart';
import 'package:travel_guide/custom/BorderBox.dart';
import 'package:travel_guide/custom/OptionButton.dart';
import 'package:travel_guide/utils/constant.dart';
import 'package:travel_guide/utils/custom_functions.dart';
import 'package:travel_guide/utils/sample_data.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 15;
    return SafeArea(
        child:Scaffold(
          body: Container(
            margin: EdgeInsets.only(top: 15),
        width: size.width,
        height: size.height,
        child: Stack(
          children:[ Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: padding),
                 child: Row(
                   children: [
                     BorderBox(
                       height: 50,
                       width: 50,
                       child: Icon(Icons.menu,color: COLOR_BLACK,size: 30.0,),
                     ),
                      Spacer(),
                     BorderBox(
                       height: 50,
                       width: 50,
                       child: Icon(Icons.settings,color: COLOR_BLACK,size: 30.0,),
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 15),
                 Padding(
                   padding:EdgeInsets.symmetric(horizontal: padding),
                   child: Text('City',style: themeData.textTheme.bodyLarge),
                 ),
               SizedBox(height: 15),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: padding),
                 child: Text('San Fransisco', style: themeData.textTheme.displayLarge),
               ),
               Divider(
                 height: 30.0,
                 thickness: 1.87,
                 indent: 13,
                 endIndent: 13,
                 color: Colors.grey[550],
               ),
               SizedBox(height: 10.0),
               SingleChildScrollView(
                 physics: BouncingScrollPhysics(),
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: ["<\$220,000","For Sale","3-4 Beds",">1000sqft"]
                       .map((filter) => ChoiceOption(text:filter)).toList(),
                 ),
               ),
               SizedBox(height: 15,),
               Expanded(
                 child: ListView.builder(
                   physics: BouncingScrollPhysics(),
                     itemCount: RE_DATA.length,
                     itemBuilder: (context,index){
                  return RealEstateItem(itemData: RE_DATA[index],);
                 }
                 ),
               )
             ],
          ),
            Positioned(
              bottom: 20,
                width: size.width,
                child: Center(
                  child: OptionButton(
                    icon: Icons.map_rounded,
                    text: 'Map View',
                    width: size.width*0.35,
                  ),
                ) ),
          ],
        ),
        ),
      ),
    );
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;
  const ChoiceOption({Key? key,required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: COLOR_GREY.withAlpha(25),
      ),
      padding: EdgeInsets.symmetric(vertical: 13,horizontal:20),
      margin: EdgeInsets.only(left: 15),
      child: Text(text,style:themeData.textTheme.displaySmall,),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;
  const RealEstateItem({Key? key,this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset(itemData["image"]),
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: BorderBox(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.favorite_border,color: COLOR_BLACK,),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Text("${formatCurrency(itemData["amount"])}",style: themeData.textTheme.displayLarge),
                  SizedBox(width: 15,),
                  Text(
                      "${itemData["address"]}",style: themeData.textTheme.bodyMedium)
                ],
              ),
              SizedBox(height: 10,),
              Text("${itemData["bedrooms"]}bedrooms/${itemData["bathrooms"]}bathrooms/${itemData["area"]}sqft",style: themeData.textTheme.headlineMedium,),
            ],
        ),
      ),
    );
  }
}

