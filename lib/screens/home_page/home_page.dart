import 'package:education_mobile_application/components/course_card.dart';
import 'package:education_mobile_application/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTabIndex = 0;

  List<Map<String, dynamic>> getFilteredCourses() {
    if (selectedTabIndex == 0) {
      return List.from(coursesData);
    } else {
      String selectedCategory = courseCategories[selectedTabIndex];
      print('Selected Tab Index: $selectedTabIndex');
      print('Selected Category: $selectedCategory');

      List<Map<String, dynamic>> filteredCourses = coursesData
          .where((course) => course['courseCategory'] == selectedCategory)
          .toList();

      print('Filtered Courses: $filteredCourses');
      return filteredCourses;
    }
  }


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.2,
                decoration: BoxDecoration(
                  color: Color(0xFF1C6758),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome To USAM',
                              style: mainText.copyWith(color: Colors.white,fontSize: 20),
                            ),
                            Text(
                              homePageText,
                              style: mainText.copyWith(
                                  color: Colors.white,
                                  fontSize: 10.4,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      ClipOval(
                                        child: Image.asset(
                                          'images/home_img1.jpeg',
                                          height: screenHeight * 0.08,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        'Instructor',
                                        style: mainText.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      ClipOval(
                                        child: Image.asset(
                                          'images/home_img2.jpg',
                                          height: screenHeight * 0.08,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        'Student',
                                        style: mainText.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Colors.black,
                                  // Set your desired border color here
                                  width: 2.0, // Set the border width
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Text(
                                  'Subscribe Now',
                                  style: mainText.copyWith(
                                    fontSize: 12.4,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight*0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Courses', style: mainText),
                  Text(
                    'View All',
                    style: mainText.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                  )
                ],
              ),
              SizedBox(height: screenHeight*0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(courseCategories.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = index;
                      });
                    },
                    child: Text(
                      courseCategories[index],
                      style: mainText.copyWith(
                        color: index == selectedTabIndex
                            ? Color(0xFF1C6758)
                            : Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  );
                }),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: getFilteredCourses().length,
                  itemBuilder: (context, index) {
                    return CourseCard(
                      imagePath: getFilteredCourses()[index]['imagePath'],
                      courseName: getFilteredCourses()[index]['courseName'],
                      rating: getFilteredCourses()[index]['rating'],
                      duration: getFilteredCourses()[index]['duration'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}