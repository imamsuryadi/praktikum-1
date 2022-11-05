import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  // Page controller
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          // ignore: sort_child_properties_last
          children: <Widget>[
            Container(
            
              color: Color.fromARGB(255, 4, 144, 238),
              height: 57.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: const Color(0x080a0928),
                    ),
                    child: const Icon(Icons.reorder),
                  ),
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: const Color(0x080a0928),
                    ),
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48, left: 28.8),
              child: Text(
                ' Welcome Imam\n Pilih Tempat Liburan Anda!',
                style: GoogleFonts.playfairDisplay(
                    fontSize: 30.5, 
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color.fromARGB(255, 0, 0, 0),
                    ),
              ),
            ),
          Container (
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            color: Color.fromARGB(255, 166, 178, 190),
            height: 218.4,
            margin: const EdgeInsets.only(top: 28.8),
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  child : Container(
                  margin: const EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1440778303588-435521a205bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG9saWRheXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'))),
                      ),
                      onTap : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                          
                          builder: (context) => const DetailScreen(),
                          ),
                        );
                  print("You Click Me");
                } 
                  ),
                GestureDetector(
                  child : Container(
                  margin: const EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1510798831971-661eb04b3739?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGhvbGlkYXl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'))),
                      ),
                      onTap : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                          
                          builder: (context) => const DetailScreen(),
                          ),
                        );
                  print("You Click Me");
                } 
                  ),
                GestureDetector(
                  child : Container(
                  margin: const EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1561294553-302bbcf0f4ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c3VtbWVyJTIwaG9saWRheXN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'))),
                      ),
                      onTap : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                          
                          builder: (context) => const DetailScreen(),
                          ),
                        );
                  print("You Click Me");
                } 
                  ),
                GestureDetector(
                  child : Container(
                  margin: const EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1665555082187-95133d7f6e97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'))),
                      ),
                      onTap : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                          
                          builder: (context) => const DetailScreen(),
                          ),
                        );
                  print("You Click Me");
                } 
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.8, top: 28.8),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.blue,
                  dotColor: Colors.blueGrey,
                  dotHeight: 5,
                  dotWidth: 6,
                  spacing: 5),
              )
              ),
            // Judul untuk section vertical content
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Untuk Anda',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Show All',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),

            // Listview (vertical content)
            Padding(
              padding: EdgeInsets.only(top: 50, left: 30, right: 30),
              child: GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://images.unsplash.com/photo-1603944558236-23ca2e2dd7f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                ),
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      
                      builder: (context) => const DetailScreen(),
                      ),
                    );
                  print("You Click Me");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 30, right: 30),
              child: GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://images.unsplash.com/photo-1599842676116-d805644ae867?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                ),
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  print("You Click Me");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 30, right: 30),
              child: GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://images.unsplash.com/photo-1665679293513-9f89c2d006e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8OTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                ),
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  print("You Click Me");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 30, right: 30),
              child: GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://images.unsplash.com/photo-1665690992253-f2bb077c1d02?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTEwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                ),
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  print("You Click Me");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 30, right: 30),
              child: GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://images.unsplash.com/photo-1665679293513-9f89c2d006e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8OTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                ),
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  print("You Click Me");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 30, right: 30),
              child: GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://images.unsplash.com/photo-1665731372684-1efcb1307d5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTE3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                ),
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  print("You Click Me");
                },
              ),
            ),

            // Penutup ListView
          ],
        ),
      )
    );
  }
}
