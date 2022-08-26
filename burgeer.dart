import 'package:flutter/material.dart';

class burgeer extends StatefulWidget {
  final String name2;
  final String image2;
  final String firsttime2;
  final String secondtime2;
  final String rate2;
  final String rest2;
  final String namee2;
  burgeer({
    required this.name2,
    required this.image2,
    required this.firsttime2,
    required this.secondtime2,
    required this.rate2,
    required this.rest2,
    required this.namee2,
  });

  @override
  State<burgeer> createState() => _burgeerState();
}

class _burgeerState extends State<burgeer> {
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
                      image: NetworkImage(widget.image2), fit: BoxFit.cover),
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
                                widget.firsttime2,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(widget.secondtime2,
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
            widget.rest2,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Text(
            widget.namee2,
            style: TextStyle(
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Text("استمتع ب اطيب انواع البركر بين ايدك عن طريق توترز"),
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
                widget.rate2,
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
