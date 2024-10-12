import 'package:flutter/material.dart';

class redesign extends StatefulWidget {
  const redesign({super.key});

  @override
  State<redesign> createState() => _redesignState();
}

class _redesignState extends State<redesign> {
  List<String> codes=[],names = [];
  bool seeAllCourses = false;
  void fetchCourseCodes(){
    codes=["CSE-3527","CSE-3528","EEE-2421","EEE-2422","CSE-3527","CSE-3528","EEE-2421","EEE-2422"];
  }

  void fetchCoursesNames(){
    names=["Compiler","Compiler lab","EEE","EEE Lab","Compiler","Compiler lab","EEE","EEE Lab"];
  }
  List<Widget>generateCourseUI(List<String>list,var size)
  {
    List<Widget>w =[];
    int limit = seeAllCourses ? list.length : 3;
    // int limt=3;
    // if(seeAllCourses)
    //   {
    //     limit=list.length;
    //   }
    for(int i=0;i<limit;i++)
      {
        w.add(
            Text(list[i],
              style: TextStyle(

                fontSize: size.width *.035,
              ),
        )
        );

      }
    return w;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchCourseCodes();
    fetchCoursesNames();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("I.Portal",
                style: TextStyle(
                  fontSize: size.width * .075,
                  fontWeight: FontWeight.bold,
                ),
                ),
                seeAllCourses? const SizedBox(): SizedBox(
                  child: Column(
                    children: [
                      SizedBox(height: 21,),
                      Container(
                        height:size.width * .31,
                        width: size.width * 0.31,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.teal,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset("assets/images/Profie_project1.jpg",
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      SizedBox(height: 11,),
                      Text("Mohammad Irtisum",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.035 ,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(21.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: size.width * .1,
                              width: size.width * .35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.redAccent,
                              ),
                              child: Center(
                                child: Text("CGPA: 3.57",
                                  style: TextStyle(
                                    fontSize: size.width*.043,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 9,),
                            Container(
                              height: size.width * .1,
                              width: size.width * .35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.teal,
                              ),
                              child: Center(
                                child: Text("4th Sem",
                                  style: TextStyle(
                                    fontSize: size.width*.043,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("+880170****710",
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: size.width * .031,
                        ),
                      ),
                      Text("mohammadirtisumbd@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: size.width * .031,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21.0,vertical: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(child: Icon(Icons.local_fire_department_rounded),
                              alignment: PlaceholderAlignment.middle,
                                
                              ),
                              TextSpan(
                                text:" Current Courses",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * .045,
                                ),
                              )
                            ]
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              seeAllCourses = !seeAllCourses;
                            });
                          },
                          child: Text(
                            seeAllCourses?"See less":"See All",
                            style: TextStyle(
                              fontSize: size.width*.03,
                              color: Colors.teal,
                              fontWeight: FontWeight.w300
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(21,0,21,21),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds:355),
                    curve: Curves.easeOut,
                    height: seeAllCourses? size.width *0.55:size.width*0.31,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.grey.shade300,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(21.0),
                      child: SingleChildScrollView(
                        // scrollDirection: Axis.horizontal,
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
                                Column(
                                  children: generateCourseUI(codes, size),
                                )
                                // for(int i=0;i<codes.length;i++)
                                //   Text(codes[i],
                                //     style: TextStyle(
                                //
                                //       fontSize: size.width *.035,
                                //     ),
                                //   ),
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: generateCourseUI(names, size),
                                )
                                // for(int i=0;i<names.length;i++)
                                //   Text(names[i],
                                //     style: TextStyle(
                                //
                                //       fontSize: size.width *.035,
                                //     ),
                                //   ),
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
