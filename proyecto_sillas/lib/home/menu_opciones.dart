import 'package:flutter/material.dart';

// se importan los archivos de cada vista que va a aparecer dentro del menu
import 'principal.dart';
import 'profile.dart';
import 'mensaje.dart';
import 'notificacion.dart';
import 'Settings.dart';
import 'contactanos.dart';
import 'ayuda.dart';

class DemoMWDrawerScreen2 extends StatefulWidget {
  const DemoMWDrawerScreen2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DemoMWDrawerScreen2State createState() => _DemoMWDrawerScreen2State();
}

class _DemoMWDrawerScreen2State extends State<DemoMWDrawerScreen2> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  GlobalKey<NavigatorState> menuNavigatorKey = GlobalKey<NavigatorState>();

// aqui van las visatas o archivos que quiero que me retornen cuando yo presione esa opciono
  List<Widget> pages = [
// esta es la vista de principal.dart
    const MainMenuPage(),
// las demas osea el resto son las clases que estan en los demas archivos
// solo se importa el archivo y se coloca el nombre de la clase
    const ProfileScreen(),
    const MessagesScreen(),
    const NotificationsScreen(),
    const SettingsScreen(),
    const ContactUsScreen(),
    const HelpScreen(),
  ];

// estos son el texto que quiero queme aparesca al momento de abrir el menu de ocpciones
// tambien se puede modificar
  List<String> pageTitles = [
    "Home",
    "My Profile",
    "Messages",
    "Contact Us",
  ];

  TextStyle primaryTextStyle = const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16);

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 1));
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        // este es el titulo del bar se puede cambiar
        title: const Text('Alejo S.A',
            style: TextStyle(color: Colors.black, fontSize: 22)),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
      drawer: ClipPath(
        clipper: OvalRightBorderClipper(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Drawer(
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, right: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: 300,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.all(8),
                      child: IconButton(
                        icon: const Icon(
                          Icons.power_settings_new,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.orange),
                      ),
                    ),
                    const SizedBox(height: 5.0),

                    // estos son los textos que quiero que aparescan cuando haro el menu de opciones
                    const Text(
                      "Alejandro hoyos xs",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text("alejo@gmail.com",
                        style: TextStyle(color: Colors.black, fontSize: 16.0)),
                    const SizedBox(height: 30),
                    for (int i = 0; i < pageTitles.length; i++) ...[
                      itemList(pageTitles[i]),
                      const Divider(),
                      const SizedBox(height: 15),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: pages[selectedIndex],
    );
  }

  int selectedIndex = 0;

  Widget itemList(String title) {
    return GestureDetector(
      child: Text(title, style: const TextStyle(color: Colors.black)),
      onTap: () {
        // print(title); // Imprimir en la consola el título seleccionado
        selectedIndex = pageTitles.indexOf(title);
        scaffoldKey.currentState!.openEndDrawer();
        setState(() {});
      },
    );
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 50, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

// -------------------------
// estas son las clases y hay van todo lo que yo quiero que aparesca dentro de la opcion una ves que lo presione
//
// aqui se queda un ejemplo de que como que una vista de otro archivo dentro del menu

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: MainMenuPage(),
//     );
//   }
// }
