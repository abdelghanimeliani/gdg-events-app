import 'package:flutter/material.dart';
import 'package:gdg_envents_app/screens/event-details-page/map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventDetailsPage extends StatefulWidget {
  const EventDetailsPage({Key? key}) : super(key: key);

  @override
  _EventDetailsPageState createState() => _EventDetailsPageState();
}

class Person {
  String img =
          "https://static.cnews.fr/sites/default/files/styles/image_640_360/public/facebook_-_tout_savoir_sur_le_metavers_de_mark_zuckerberg_616d3ea102528.jpg?itok=SuFry9mj",
      name = 'Mark Zuckerberg',
      profession = "CEO of META";
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    Person mark = Person(),
        elon = Person(),
        jeff = Person(),
        bill = Person(),
        pichai = Person();
    elon.img = "https://kawa-news.com/wp-content/uploads/2021/04/elonmusk.jpg";
    elon.name = "Elon Musk";
    elon.profession = 'CEO of Tesla';

    jeff.img =
        "https://images.hindustantimes.com/img/2021/07/05/1600x900/0586411ade484ad8a5a5ff0cbf6efbcc-0586411ade484ad8a5a5ff0cbf6efbcc-0_1625453725408_1625453742904.jpg";
    jeff.name = "Jeff Bezzos";
    jeff.profession = 'CEO of Amazon ';

    bill.img =
        "https://media.lesechos.com/api/v1/images/view/616d45cf3e454677aa5070c8/1280x720/070139478274-web-tete.jpg";
    bill.name = "Bill Gates";
    bill.profession = 'CEO of Microsoft ';

    pichai.img =
        "https://itzine.ru/wp-content/uploads/2020/01/sundar_pichai.0.jpg";
    pichai.name = "Sunder Pichai";
    pichai.profession = "CEO of Google";
    final urlImages = [bill, mark, jeff, elon, pichai].map((e) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            margin: const EdgeInsets.only(top: 30.0, right: 10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    height: 300.0,
                    width: 315.0,
                    image: NetworkImage(e.img),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xAA000000),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(26.0),
                          bottomRight: Radius.circular(26.0)),
                    ),
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 30.0),
                    height: 81.0,
                    width: 315.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.name,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          e.profession,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      );
    }).toList();

    return Scaffold(
      backgroundColor: const Color(0xffdde4ec),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              height: 87.0,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST83cwlDIBi8BX4ICKXwm3IfXRH7IAXZX0HT1T5CpNH3MHJmZ9fEqXMgg-zHbGwKgtBUk&usqp=CAU'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(
                          "User Name ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 22.0,
                          ),
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Icon(Icons.notifications_outlined, size: 24),
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        maximumSize: const Size(100.0, 40),
                        padding: const EdgeInsets.all(2),
                        primary: Colors.white, // <-- Button color
                        onPrimary: Colors.grey, // <-- Splash color
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 40.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HACK THE BOT ",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 34.0,
                    ),
                  ),
                  Text(
                    "ALGIERS",
                    style: GoogleFonts.poppins(
                      height: 0.45,
                      fontWeight: FontWeight.w300,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(top: 35.0),
                child: Column(
                  children: [
                    Text(
                      "Event speakers and \nmentors",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0,
                        height: 1.1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25.0),
                      width: 51.0,
                      height: 4.0,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 900,
              child: CarouselSlider(
                  options: CarouselOptions(height: 300.0), items: urlImages),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(top: 35.0),
                child: Column(
                  children: [
                    Text(
                      "Event schedule",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0,
                        height: 1.1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25.0),
                      width: 51.0,
                      height: 4.0,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  margin: const EdgeInsets.only(
                      right: 13.0, left: 13.0, top: 12, bottom: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Day 1",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  color: const Color(0xff109d58),
                ),
                Card(
                  margin: const EdgeInsets.only(
                      right: 13.0, left: 13.0, top: 12, bottom: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Day 2",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  color: const Color(0xff109d58),
                ),
                Card(
                  margin: const EdgeInsets.only(
                      right: 13.0, left: 13.0, top: 12, bottom: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Day 3",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  color: const Color(0xff109d58),
                ),
              ],
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "08:30 - 09:00",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                        width: 320.0,
                        child: Card(
                          elevation: 5,
                          color: const Color(0xffDDE4EC),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Center(
                            child: Text(
                              "Check In ",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        height: 23.0,
                        width: 3,
                        color: const Color(0xff707070),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "09:00 - 09:15",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                        width: 320.0,
                        child: Card(
                          elevation: 5,
                          color: const Color(0xffDDE4EC),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Center(
                            child: Text(
                              "Opening Ceremony",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        height: 23.0,
                        width: 3,
                        color: const Color(0xff707070),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "09:30 - 12:00",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 79.0,
                        width: 320.0,
                        child: Card(
                          elevation: 5,
                          color: const Color(0xffDDE4EC),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  text: 'Talk : ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'What is a bot ?\n',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\t\t\t\t\tAbdelghani Meliani',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        height: 23.0,
                        width: 3,
                        color: const Color(0xff707070),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "13:00 - 16:00",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 79.0,
                        width: 320.0,
                        child: Card(
                          elevation: 5,
                          color: const Color(0xffDDE4EC),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  text: 'WorkShop : ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'How to create a bot ?\n\t\t\t\t\t\t\t\t\t',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tElon Musk',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(top: 35.0),
                child: Column(
                  children: [
                    Text(
                      "Event location",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0,
                        height: 1.1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25.0),
                      width: 51.0,
                      height: 4.0,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text:
                            "The second edition of HACK THE  \nBOT will be held at",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                          height: 1.7,
                        ),
                        children: [
                          TextSpan(
                              text: ' "ESI Algiers" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black,
                              ))
                        ]),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.map_outlined,
                    color: Colors.black,
                    size: 36,
                  ),
                  Text(
                    "  On map",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            const MapSample(),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xffDDE4EC),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
              size: 30,
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.grey,
              size: 28,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 25,
              child: SvgPicture.asset(
                "images/embed-code.svg",
                color: Colors.white,
                width: 30,
                height: 20,
              ),
              backgroundColor: Colors.red,
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.hourglass_top,
              color: Colors.grey,
              size: 28,
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.view_list,
              color: Colors.grey,
              size: 28,
            ),
            label: "",
          )
        ],
      ),
    );
  }
}
