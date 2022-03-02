import 'package:flutter/material.dart';
import 'package:katana_design/models/Job.dart';

class JobsPart extends StatefulWidget {
  final double height;
  const JobsPart({
    Key? key,
    this.height = 200,
  }) : super(key: key);

  @override
  State<JobsPart> createState() => _JobsPartState();
}

class _JobsPartState extends State<JobsPart> {
  List<Job> jobs = [];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Job designer = new Job("UI/UX Designer", "assets/aribnb.png", "Aribnb",
        "United States", "£2350", "Full time");
    Job financial = new Job("Financial Planner", "assets/twitter.png",
        "Twitter", "United Kingdom", "£2200", "Part time");

    jobs.add(designer);
    jobs.add(financial);
    jobs.add(designer);
    jobs.add(financial);
    jobs.add(designer);
    jobs.add(financial);

    return Column(
      children: [
        Container(
          height: widget.height,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: jobs.length,
            itemBuilder: (context, index) => buildCategoryItem(jobs, index),
          ),
        ),
      ],
    );
  }

  Widget buildCategoryItem(jobs, index) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.blueAccent, width: 0.1),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 15.0,
                color: Color(0xffF5F7FE),
                offset: Offset(0, 10),
                spreadRadius: -2,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Image.asset(
                              jobs[index].image,
                              fit: BoxFit.cover,
                              height: 60,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    jobs[index].title,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    jobs[index].company,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    jobs[index].country,
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[600]),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Flexible(
                                  child: IconButton(
                                      alignment: Alignment.topRight,
                                      onPressed: () {},
                                      icon: index % 2 == 1
                                          ? Icon(Icons.bookmark_border)
                                          : Icon(Icons.bookmark),
                                      color: Color(0xFF4081FF)),
                                ),
                                Text(
                                  jobs[index].price,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF4081FF),
                                      height: 1.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
