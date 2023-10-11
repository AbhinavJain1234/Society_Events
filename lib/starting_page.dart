import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social/event_list.dart';
import 'package:social/horizontal_calender_widget.dart';
import 'package:social/models/event.dart';
import 'package:social/scrolcards.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<StartingPage> createState() {
    return _StartingPage();
  }
}

class _StartingPage extends State<StartingPage> {
  final List<Event> _registeredEvents = [
    Event(date: DateTime.now(), title: 'Raptus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Cactus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Raptus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Cactus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Raptus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Cactus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Raptus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Cactus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Raptus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Cactus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Raptus', id: 'images/push.jpg'),
    Event(date: DateTime.now(), title: 'Cactus', id: 'images/push.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'events',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 252, 82, 77),
              fontWeight: FontWeight.w700,
              fontSize: 35,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HorizontalCalendarWidget(),
          const scrolcards(),
          //const Cards(),
          const SizedBox(height: 16.0), // Add spacing between the Card and Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'All Events',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          EventList(event: _registeredEvents)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken),
            label: 'Liked',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: const Color.fromARGB(255, 252, 82, 77),
        onTap: null,
      ),
    );
  }
}
