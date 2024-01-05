import 'package:flutter/material.dart';
import 'package:portfolio/app/modules/home_page/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'courses_data.dart';

class CoursesPage extends StatefulWidget {
  CoursesPage({Key? key}) : super(key: key);

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    List<Course> courses = Course.courses;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: isDarkMode ? Colors.transparent : Colors.white,
          centerTitle: true,
          title: const AppBarTitle(),
          // leading: ResponsiveVisibility(
          //   hiddenWhen: const [Condition.largerThan(name: TABLET)],
          //   child: IconButton(
          //     onPressed: () {},
          //     icon: const Icon(Icons.menu),
          //   ),
          // ),
          actions: [
            const ResponsiveVisibility(
              visible: false,
              visibleWhen: [Condition.largerThan(name: TABLET)],
              child: MenuTextButton(text: 'Courses'),
            ),
            const ResponsiveVisibility(
              visible: false,
              visibleWhen: [Condition.largerThan(name: TABLET)],
              child: MenuTextButton(text: 'About'),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
              icon: isDarkMode
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: IconButton(
            //     icon: const Icon(Icons.mark_email_unread_rounded),
            //     onPressed: () {},
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: IconButton(
            //     icon: const Icon(Icons.logout_rounded),
            //     onPressed: () {},
            //   ),
            // ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            const Center(child: PageHeader()),
            const SizedBox(
              height: 30,
            ),
            ResponsiveRowColumn(
              rowMainAxisAlignment: MainAxisAlignment.center,
              rowPadding: const EdgeInsets.all(30),
              columnPadding: const EdgeInsets.all(30),
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: CourseTile(course: courses[0]),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: CourseTile(course: courses[1]),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: CourseTile(course: courses[2]),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(child: SubscribeBlock()),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Follow For More',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ResponsiveValue(
                  context,
                  defaultValue: 35.0,
                  valueWhen: const [
                    Condition.smallerThan(
                      name: MOBILE,
                      value: 20.0,
                    ),
                    Condition.largerThan(
                      name: TABLET,
                      value: 20.0,
                    )
                  ],
                ).value,
                color: Colors.blueGrey[900],
                fontWeight: FontWeight.w700,
              ),
            ),
            // const ImagsFollowForMore(),
            const ImagesSlider(),
            const SizedBox(
              height: 25,
            ),
            const GridView4Images(),
            const SizedBox(
              height: 25,
            ),

            const SizedBox(
              height: 25,
            ),
            Container(
              child: Image.network(
                  'https://www.readz.com/image/8359137.1641922606000/footer-agency.webp'),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
