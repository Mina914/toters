import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  final String name;
  final String image;
  final String firsttime;
  final String secondtime;
  final String rate;
  final String rest1;
  final String namee;

  profile(
      {required this.name,
      required this.image,
      required this.firsttime,
      required this.secondtime,
      required this.rate,
      required this.rest1,
      required this.namee});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 150, left: 20),
                  child: Container(
                    height: 50,
                    width: 75,
                    child: Container(
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.firsttime,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(widget.secondtime,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15)),
                            ],
                          ),
                          Text(
                            "دقائق",
                            style: TextStyle(color: Colors.black45),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
          Text(
            widget.rest1,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Text(
            "فطور.\$\$",
            style: TextStyle(
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Text("استمتع ب اطيب انواع كاهي بين ايدك عن طريق توترز"),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.star,
                color: Colors.greenAccent,
              ),
              Icon(
                Icons.star,
                color: Colors.greenAccent,
              ),
              Icon(
                Icons.star,
                color: Colors.greenAccent,
              ),
              Icon(
                Icons.star,
                color: Colors.greenAccent,
              ),
              Text(
                widget.rate,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
