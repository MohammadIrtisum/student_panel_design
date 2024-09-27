import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int i =0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          // width: double.infinity,
          // height: double.infinity,
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "I.Potal",
                  style: TextStyle(
                    fontSize: size.width * .077,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 21,),
                Container(
                  width: size.width * 0.31,
                  height:size.width * 0.31,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                      child: Image.asset("assets/images/Mohammad_Irtisum-removebg-preview.png",
                      fit:BoxFit.cover ,
                      )
                  ),
                ),
                SizedBox(height: 11,),
                Text("Mohammad Irtisum",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.04,
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height:size.width *.1,
                        width: size.width *0.4,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text("CGPA: 3.59",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: size.width *.055
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 9,),
                      Container(
                        height:size.width *.1,
                        width: size.width *0.4,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text("5th Sem",
                          style: TextStyle(
                            fontSize: size.width * .055,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text("+8801705****10",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * .035,
                ),
                ),
                Text("mohammadirtisumbd@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * .035,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Align(
                  // alignment: Alignment.centerLeft,
                  alignment: AlignmentDirectional.centerStart,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21.0,vertical: 11),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(child: Icon(Icons.local_fire_department),
                          alignment: PlaceholderAlignment.middle,
                          ),
                          TextSpan(
                                text: " Current Courses",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: size.width *.055,
                                  // height: 0,
                                ),
                          ),
                        ]
                      )
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(21,0,21,21),
                  child: Container(
                    // height: size.width,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.grey.shade300,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(21.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Course Code",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width *.043,
                                ),
                                ),
                                Text("CSE-3527",
                                  style: TextStyle(

                                    fontSize: size.width *.035,
                                  ),
                                ),
                                Text("CSE-3527",
                                  style: TextStyle(

                                    fontSize: size.width *.035,
                                  ),
                                ),
                                Text("Course Code",
                                  style: TextStyle(

                                    fontSize: size.width *.035,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 81,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Course Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width *.043,
                                  ),
                                ),
                                Text("COMPUTER ARCHITECTURE",
                                  style: TextStyle(

                                    fontSize: size.width *.035,
                                  ),
                                ),
                                Text("CSE-3527",
                                  style: TextStyle(

                                    fontSize: size.width *.035,
                                  ),
                                ),
                                Text("Course Code",
                                  style: TextStyle(

                                    fontSize: size.width *.035,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
