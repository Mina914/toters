import 'package:flutter/material.dart';
import 'package:totares/profile.dart';
import 'burgeer.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.7,
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              Icon(
                Icons.notifications_active_outlined,
                color: Colors.black54,
              ),
              Icon(
                Icons.settings_suggest_outlined,
                color: Colors.black45,
              ),
              SizedBox(
                width: 250,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
              Text(
                "توصيل الى\nبغداد,العرق",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 700,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "سجل الدخول باستخدام تطبيق توترزواستمتع بمزايا حصرية",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    Icon(Icons.arrow_circle_right_outlined,
                        color: Colors.blueAccent),
                  ],
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset("images/po3.jpg"),
                      Image.asset("images/po2.jpg"),
                      Image.asset("images/po1.jpg"),
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          img("https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/groceries20.png",
                              "البقالة"),
                          img("https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/food20.png",
                              "المطاعم"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          imge(
                              "https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/add_funds8.png",
                              "اضف رصيد"),
                          imge(
                              "https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/retail8.png",
                              "متجر"),
                          imge(
                              "https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/butler20.png",
                              "المندوب"),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_left_outlined,
                          color: Colors.green,
                        ),
                        Text(
                          "خصومات اسبوعية",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Text(
                      "احصل على خصم 50% على مطاعم هذا الاسبوع",
                      style: TextStyle(color: Colors.black45, fontSize: 15),
                    ),
                    Container(
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("images/k1.jpg"),
                                          fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(top: 110, left: 20),
                                      child: Container(
                                        height: 50,
                                        width: 75,
                                        child: Container(
                                          height: 25,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "52-",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15),
                                                  ),
                                                  Text("42",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15)),
                                                ],
                                              ),
                                              Text(
                                                "دقائق",
                                                style: TextStyle(
                                                    color: Colors.black45),
                                              )
                                            ],
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => profile(
                                                name: "كاهي فيروز",
                                                image: "images/k1.jpg",
                                                firsttime: "54-",
                                                secondtime: "42",
                                                rate: "4.9",
                                                rest1: "كاهي فيروز",
                                                namee: "فطور.\$\$",
                                              )));
                                },
                                child: Text(
                                  "كاهي فيروز ",
                                  style: TextStyle(
                                      fontFamily: 'ElMessiri',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                              Text(
                                "فطور.\$\$",
                                style: TextStyle(
                                    fontFamily: 'ElMessiri',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.black),
                              ),
                              Row(
                                children: [
                                  Container(
                                      width: 70,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("4.9"),
                                          Icon(
                                            Icons.star,
                                            color: Colors.greenAccent,
                                          ),
                                        ],
                                      )),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                      width: 100,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.blueAccent
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "اكسب نقاط",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                          Icon(
                                            Icons.plus_one_sharp,
                                            color: Colors.blue,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => burgeer(
                                                name2: "فايرفاير",
                                                image2:
                                                    "https://cdn.shopify.com/s/files/1/0580/3245/5858/products/aloha-yumburger.jpg?v=1628626212&width=1080",
                                                firsttime2: "52-",
                                                secondtime2: "42",
                                                rate2: "4.9",
                                                rest2: "فاير فاير",
                                                namee2: "فاست فود برغر.\$\$",
                                              )));
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.shopify.com/s/files/1/0580/3245/5858/products/aloha-yumburger.jpg?v=1628626212&width=1080"),
                                            fit: BoxFit.cover),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 110, left: 20),
                                        child: Container(
                                          height: 50,
                                          width: 75,
                                          child: Container(
                                            height: 25,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "52-",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                    Text("42",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                  ],
                                                ),
                                                Text(
                                                  "دقائق",
                                                  style: TextStyle(
                                                      color: Colors.black45),
                                                )
                                              ],
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Text(
                                "فاير فاير",
                                style: TextStyle(
                                    fontFamily: 'ElMessiri',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              Text(
                                "فاست فود برغر.\$\$",
                                style: TextStyle(
                                    fontFamily: 'ElMessiri',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.black),
                              ),
                              Row(
                                children: [
                                  Container(
                                      width: 70,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("4.9"),
                                          Icon(
                                            Icons.star,
                                            color: Colors.greenAccent,
                                          ),
                                        ],
                                      )),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                      width: 100,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.blueAccent
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "اكسب نقاط",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                          Icon(
                                            Icons.plus_one_sharp,
                                            color: Colors.blue,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container img(String image, String name) {
    return Container(
      height: 80,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              image,
              height: 50,
              width: 50,
            ),
            Text(
              name,
              style: TextStyle(
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }

  Container imge(String imge, String namee) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              imge,
              height: 50,
              width: 50,
            ),
            Text(
              namee,
              style: TextStyle(
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
