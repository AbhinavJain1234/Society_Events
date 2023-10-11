import 'package:social/event_item.dart';
import 'package:social/models/event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventList extends StatelessWidget {
  const EventList({
    super.key,
    required this.event,
  });
  final List<Event> event;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: event.length,
        itemBuilder: (ctx, index) => EventItem(
          event: event[index],
      ),
      ),
    );
  }
}
