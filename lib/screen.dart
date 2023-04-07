import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 170,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Text(
                      'PIMS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_back,
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              ))
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 120, left: 15, right: 15),
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeKVNW6cmOrf9IKMNbe4QG4OxsADJJONbIrA&usqp=CAU'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(40)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'ALL IN',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'foh 4 habat tchina 5 banan 400ml ta3 hlib chwiya 3asir albo3bo3 w takhlatat handiya w chwiya masho9 akhdar li fih riha',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        4,
                        (index) => Container(
                              margin: EdgeInsets.only(left: 15),
                              height: 60,
                              width: 170,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: index == 0
                                      ? Border.all(
                                          color: Colors.orange, width: 2)
                                      : Border.all(
                                          color: Colors.grey, width: 1)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://www.kindpng.com/picc/m/732-7327478_transparent-yellow-splash-png-color-splash-black-png.png'))),
                                  ),
                                  Text(
                                    'tzidlah banan',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ))
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 55,
                          width: 75,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '450 ML',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 55,
                          width: 75,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border:
                                  Border.all(color: Colors.orange, width: 2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '600 ML',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Text(
                      '1500 DA',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 70,
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 247, 174),
                          Color.fromARGB(255, 255, 203, 114),
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.5, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  'Pay One',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
