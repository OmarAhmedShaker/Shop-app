import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';

import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/Location.svg',
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              '15/2 New Taxes',
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Notification.svg'))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Text(
              'best outfites for you',
              style: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: CategoryCard(
                              title: 'Dress',
                              icon: 'assets/icons/dress.svg',
                              press: () {}),
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String title, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultBorderRadius)))),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
          child: Column(
            children: [
              SvgPicture.asset(icon),
              SizedBox(
                height: defaultPadding / 2,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ));
  }
}
