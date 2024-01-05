import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'courses_data.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/kakelay.jpg'),
          ),
        ),
        SizedBox(width: 14),
        Icon(Icons.school_rounded),
        Text(
          '   KAK ELAY',
          // style: TextStyle(
          //   fontWeight: FontWeight.bold,
          //   fontSize: 18,
          //   color: Colors.redAccent,
          // ),
        ),
      ],
    );
  }
}

class MenuTextButton extends StatelessWidget {
  final String text;
  const MenuTextButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Image(
          width: 900,
          //   color: Color.fromRGBO(255, 255, 255, 0.5),
          colorBlendMode: BlendMode.modulate,
          image: AssetImage('assets/images/header_image.png'),
        ),
        // Text(
        //   'Welcome',
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     fontSize: ResponsiveValue(
        //       context,
        //       defaultValue: 60.0,
        //       valueWhen: const [
        //         Condition.smallerThan(
        //           name: MOBILE,
        //           value: 40.0,
        //         ),
        //         Condition.largerThan(
        //           name: TABLET,
        //           value: 80.0,
        //         )
        //       ],
        //     ).value,
        //     color: Colors.blueGrey[900],
        //     fontWeight: FontWeight.w700,
        //   ),
        // ),
      ],
    );
  }
}

class CourseTile extends StatelessWidget {
  final Course course;
  const CourseTile({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        color: Colors.blueGrey[50],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 600,
                height: 350,
                child: Image.asset(
                  course.image,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                course.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                course.time,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                course.description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubscribeBlock extends StatelessWidget {
  const SubscribeBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Want to learn more?\nSubscribe to our newsletter!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 18,
              ),
            ),
            onPressed: () {},
            child: const Text('SUBSCRIBE'),
          ),
        )
      ],
    );
  }
}

class ImagsFollowForMore extends StatelessWidget {
  const ImagsFollowForMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveValue(
        context,
        defaultValue: 500.0,
        valueWhen: const [
          Condition.smallerThan(
            name: MOBILE,
            value: 400.0,
          ),
          Condition.largerThan(
            name: TABLET,
            value: 500.0,
          )
        ],
      ).value,
      height: ResponsiveValue(
        context,
        defaultValue: 500.0,
        valueWhen: const [
          Condition.smallerThan(
            name: MOBILE,
            value: 400.0,
          ),
          Condition.largerThan(
            name: TABLET,
            value: 500.0,
          )
        ],
      ).value,
      child: Image.asset(
        'assets/images/login.png',
      ),
    );
  }
}

class GridView4Images extends StatelessWidget {
  const GridView4Images({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                child: Image.network(
                    'https://codenovation.org/images/flutter-interact-card.png'),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Image.network(
                    'https://pbs.twimg.com/profile_images/1513607174555062273/BhYsx-c4_400x400.jpg'),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                child: Image.network(
                    'https://emaillistvalidation.com/blog/content/images/2023/10/getx.jpg'),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Image.network(
                    'https://qph.cf2.quoracdn.net/main-qimg-729a22aba98d1235fdce4883accaf81e'),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ImagesSlider extends StatelessWidget {
  const ImagesSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      child: Carousel(
        indicatorBarColor: Colors.transparent,
        autoScrollDuration: const Duration(seconds: 1),
        animationPageDuration: Duration(milliseconds: 500),
        activateIndicatorColor: Colors.transparent,
        //  animationPageCurve: Curves.bounceInOut,
        indicatorBarHeight: 30,
        indicatorHeight: 15,
        indicatorWidth: 5,
        unActivatedIndicatorColor: Colors.transparent,

        autoScroll: true,

        // widgets
        items: [
          Image.asset(
            'assets/images/login.png',
          ),
          Image.asset(
            'assets/images/kakelay.jpg',
          ),
          Image.asset(
            'assets/images/github.png',
          ),
          Image.asset(
            'assets/images/ui.png',
          ),
          Image.asset(
            'assets/images/MealMonkeyLogo.png',
          ),
          Image.asset(
            'assets/images/login.png',
          ),
        ],
      ),
    );
  }
}
