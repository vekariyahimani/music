import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:music/screen/music_app/provider/mprovider.dart';
import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  MProvider? mProvidertrue;
  MProvider? mProviderfalse;

  @override
  Widget build(BuildContext context) {
    mProviderfalse = Provider.of<MProvider>(context, listen: false);
    mProvidertrue = Provider.of<MProvider>(context, listen: true);

    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: 790,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              (Color(0xff152238)),
              (Color(0xff152238)),
            ])),
          ),
          Padding(
            padding: EdgeInsets.only(top: 17, left: 10),
            child: Row(
              children: [
                Text(
                  "Hey",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "himani",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 64,
                ),
                Container(
                  height: 26,
                  width: 113,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "   SUBSCRIBE",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 53, left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "g+",
                      style: TextStyle(color: Colors.red),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "FREE USER",
                      style: TextStyle(color: Colors.white38, fontSize: 12),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Ad-free prwmium experience at just\nrs.299",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 135, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Artists For You",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text(
                      "View all",
                      style: TextStyle(color: Colors.white54, fontSize: 13),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 14,
                    )
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Artists based on your interest",
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  mProviderfalse!.changeindex(index);
                  Navigator.pushNamed(context, '5');
                },
                child: Column(

                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 200,left: 10,right: 10),
                          child: Container(
                              height: 145,
                              width: 145,
                              margin: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(color: Colors.brown, width: 4)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  '${mProviderfalse!.sliderImage[index].image}',
                                  fit: BoxFit.cover,
                                ),
                              )),
                        )
                      ],
                    ),
                    Text(
                      "${mProviderfalse!.sliderImage[index].name}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "${mProviderfalse!.sliderImage[index].follow}",

                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),

                  ],
                ),
              ),
              itemCount: mProvidertrue!.sliderImage.length,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 200,right: 10,left: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        mProviderfalse!.changeindex(index);
                      },
                      child: Box(mProviderfalse!.image1[index].image!));
                },
                itemCount: mProviderfalse!.image1.length,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 370),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        mProviderfalse!.changeindex(index);
                         Navigator.pushNamed(context, '5');
                      },
                      child: Box(mProviderfalse!.image2[index].image!));
                },
                itemCount: mProviderfalse!.image1.length,
              ),
            ),
          ),






        ],
      ),
    ));
  }
  Widget Box( String img,)
  {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      '${img}',
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ],
        ),


      ],
    );
  }


}
