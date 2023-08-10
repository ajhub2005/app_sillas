import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DemoMWDrawerScreen4 extends StatefulWidget {
  const DemoMWDrawerScreen4({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DemoMWDrawerScreen4State createState() => _DemoMWDrawerScreen4State();
}

class _DemoMWDrawerScreen4State extends State<DemoMWDrawerScreen4> {
  TextStyle boldTextStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 24);
  
  List<SampleListModel> getData = [];

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  double angle = 0;

  bool d1Open = false;

  late int isSelected = 0;

  closeDrawer() {
    xOffset = 0;
    yOffset = 0;
    angle = 0;
    scaleFactor = 1;
    d1Open = false;
    setStatusBarColor(appStore.scaffoldBackground!);
  }

  openDrawer() {
    xOffset = 200;
    yOffset = 80;
    scaleFactor = 0.8;
    angle = 6.18;
    d1Open = true;
    setStatusBarColor(const Color(0xFF6A66BB));
    setState(() {});
  }

  @override
  void initState() {
    setStatusBarColor(appStore.scaffoldBackground!);
    super.initState();
    getData.add(
      SampleListModel(
        title: "principal",
        icon: Icons.home_filled,
        launchWidget: Center(child:Text("principal View", style: boldTextStyle)),
      ),
    );
    getData.add(
      SampleListModel(
        title: "contactanos",
        icon: Icons.contact_mail_rounded,
        launchWidget: Center(child:Text("contactanos View", style: boldTextStyle)),
      ),
    );
    getData.add(
      SampleListModel(
        title: "Notification",
        icon: Icons.notifications_none,
        launchWidget: Center(child:Text("Notification View", style: boldTextStyle)),
      ),
    );
    getData.add(
      SampleListModel(
        title: "Help",
        icon: Icons.help_outline_outlined,
        launchWidget: Center(child:Text("Help View", style: boldTextStyle)),
      ),
    );
    // getData.add(
    //   SampleListModel(
    //     title: "About Us",
    //     icon: Icons.info_outline,
    //     launchWidget: Center(child:Text("About Us View", style: boldTextStyle)),
    //   ),
    // );
    // getData.add(
    //   SampleListModel(
    //     title: "Rate Us",
    //     icon: Icons.star_border,
    //     launchWidget: Center(child:Text("Rate Us View", style: boldTextStyle)),
    //   ),
    // );
    init();
  }

  void init() async {
    await Future.delayed(const Duration(seconds: 1)).then((value) => openDrawer());
  }
  @override
  void dispose() {
    setStatusBarColor(appStore.scaffoldBackground!);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color:const Color(0xFF6A66BB),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:const EdgeInsets.only(left: 16),
                    child:const Column(
                      children: [
                        SizedBox(height: 40,),
                        Icon(Icons.account_circle, color: Colors.white, size: 70),
                        SizedBox(height: 8,),
                        Text('Rebeca Babara', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      ...List.generate(
                        getData.length,
                        (index) {
                          SampleListModel data = getData[index];
                          return ListTile(
                            tileColor: isSelected == index ? const Color(0xFF513AAF) : Colors.transparent,
                            title: Text(
                              data.title ?? "",
                              style: TextStyle(
                                color: isSelected == index
                                    ? Colors.white
                                    : Colors.white54,
                              ),
                            ),
                            leading: Icon(
                              data.icon,
                              color: isSelected == index
                                  ? Colors.white
                                  : Colors.white54,
                            ),
                            onTap: () {
                              isSelected = index;
                              closeDrawer();
                              setState(() {});
                            },
                          );

                        },
                      ),
                    ],
                  ),
                  Container(
                    padding:const EdgeInsets.only(left: 16, bottom: 24),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: ListTile(
                      title:const Row(
                        children: [
                          Icon(Icons.logout,color: Colors.white),
                          SizedBox(width: 5,),
                          Text("Logout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      onTap: () {
                        closeDrawer();
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                closeDrawer();
                setState(() {});
              },
              onPanUpdate: (d) {
                closeDrawer();
                setState(() {});
              },
              child: AnimatedContainer(
                duration:const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: d1Open
                      ? BorderRadius.circular(16)
                      : BorderRadius.circular(0),
                ),
                transform: Matrix4.translationValues(xOffset, yOffset, 0)
                  ..scale(scaleFactor)
                  ..rotateZ(angle),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(d1Open ? Icons.arrow_back : Icons.menu, size: 24),
                          onPressed: () {
                            if (d1Open) {
                              closeDrawer();
                            } else {
                              xOffset = 200;
                              yOffset = 80;
                              scaleFactor = 0.8;
                              angle = 6.18;
                              d1Open = true;
                              setStatusBarColor(const Color(0xFF6A66BB));
                            }
                            setState(() {});
                          },
                        ),
                      const  SizedBox(width:8),
                      const  Text('Hello, User', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            getData[isSelected].launchWidget??Container(),
                           const SizedBox(height: 16),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(appStore.textPrimaryColor!),
                                padding: MaterialStateProperty.all(const EdgeInsets.only(left:15,right: 15)),
                                shadowColor:MaterialStateProperty.all(Colors.transparent),
                              ),

                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child:const Text('Go Back',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),

                          ],
                        )
                      )
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  //change status bar color
  Future<void> setStatusBarColor(
      Color statusBarColor, {
        Color? systemNavigationBarColor,
        Brightness? statusBarBrightness,
        Brightness? statusBarIconBrightness,
        int delayInMilliSeconds = 200,
      }) async {
    await Future.delayed(Duration(milliseconds: delayInMilliSeconds));

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        systemNavigationBarColor: systemNavigationBarColor,
        statusBarBrightness: statusBarBrightness,
        statusBarIconBrightness: statusBarIconBrightness ?? Brightness.light,
      ),
    );
  }
}
class SampleListModel {
  Widget? leading;
  String? title;
  String? subTitle;
  Widget? trailing;
  IconData? icon;
  IconData? alternateIcon;
  Function? onTap;
  Color? colors;
  Widget? launchWidget;

  SampleListModel({this.leading, this.title, this.subTitle, this.colors, this.icon, this.alternateIcon, this.trailing, this.onTap, this.launchWidget});
}

AppStore appStore = AppStore();
class AppStore{

  Color? textPrimaryColor;
  Color? iconColorPrimaryDark;
  Color? scaffoldBackground;
  Color? backgroundColor;
  Color? backgroundSecondaryColor;
  Color? appColorPrimaryLightColor;
  Color? textSecondaryColor;
  Color? appBarColor;
  Color? iconColor;
  Color? iconSecondaryColor;
  Color? cardColor;

  AppStore(){

    textPrimaryColor = const Color(0xFF212121);
    iconColorPrimaryDark =const Color(0xFF212121);
    scaffoldBackground =const Color(0xFFEBF2F7);
    backgroundColor = Colors.black;
    backgroundSecondaryColor =const Color(0xFF131d25);
    appColorPrimaryLightColor =const Color(0xFFF9FAFF);
    textSecondaryColor =const Color(0xFF5A5C5E);
    appBarColor = Colors.white;
    iconColor = const Color(0xFF212121);
    iconSecondaryColor =const Color(0xFFA8ABAD);
    cardColor =const Color(0xFF191D36);

  }
}