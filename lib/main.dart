import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(child: _getMainBody()),
        backgroundColor: Colors.white,
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xFF01363DF),
      title: Text(
        'پـارسا شـریفی',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            _getMainContent(),
          ],
        ),
      ),
    );
  }

  Widget _getMainContent() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
        ),
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: AssetImage('images/profile2.jpg'),
          radius: 70,
        ),
        SizedBox(height: 15),
        Text(
          ':) دانش آموزم',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6),
        Text(
          'علاقه مند به فلاتر و طراحی',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 3),
        _getIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 22),
        _getResume(),
      ],
    );
  }

  Widget _getResumeList() {
    var list = [
      'از صفر سالگی تا دو سالگی شیر خوردم',
      'از دو سالگی تا هفت سالگی شروع به کشف محیطم کردم',
      'از هفت سالگی تا سیزده سالگی بدون هدف درس خوندنم',
      'از سیزده سالگی با دنیای کامپیوتر و اینترنت آشنا شدم',
      'بعدش کلی سر خوردم بین دنیای طراحی و برنامه نویسی و هک',
      'الان در هفده سالگی با یادگیری فلاتر خدمت شما هستم :)',
      'این قصه ادامه دارد...'
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: 20,
        ),
        for (var item in list) Text('$item', textDirection: TextDirection.rtl),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: double.infinity,
      color: Color(0xFFDFF6FF),
      child: Column(children: [
        Text(
          'سابقه کاری من',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        _getResumeList()
      ]),
    );
  }

  Widget _getIcons() {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Iconsax.instagram)),
        IconButton(onPressed: () {}, icon: Icon(Iconsax.send_2)),
        IconButton(onPressed: () {}, icon: Icon(Iconsax.link_2)),
        IconButton(onPressed: () {}, icon: Icon(Iconsax.call)),
      ],
    );
  }

  Widget _getSkillCards() {
    var items = ['گیتهاب', 'دارت', 'فلاتر', 'پایتون', 'لینوکس'];

    return Wrap(
      spacing: 2,
      children: [
        for (var item in items)
          Card(
            elevation: 2,
            child: Column(
              children: [
                Image(
                  height: 65,
                  width: 65,
                  image: AssetImage('images/$item.png'),
                ),
                Padding(
                  child: Text('$item', textAlign: TextAlign.center),
                  padding: EdgeInsets.all(2),
                ),
              ],
            ),
          ),
      ],
    );
  }
}