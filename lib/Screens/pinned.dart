import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'notes.dart';

Widget buildRow() {
  Notes notes = Notes();
  notes.addNotes('Sample Note');

  return Slidable(
    actionPane: SlidableStrechActionPane(),
    actionExtentRatio: 0.25,
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
      subtitle: Text(
        'No Additional Text',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      title: Text(
        notes.getNotes(0),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
    actions: <Widget>[
      IconSlideAction(
        color: Color(0xffd7a931),
        icon: !notes.checkIfPinned(0) ? Icons.pin_drop : Icons.add,
        onTap: () {
          notes.toggle(0);
        },
      ),
    ],
    secondaryActions: <Widget>[
      IconSlideAction(
        color: Color(0xff2d89fc),
        icon: Icons.person_add,
      ),
      IconSlideAction(
        color: Color(0xff6e6eff),
        icon: Icons.folder,
      ),
      IconSlideAction(
        color: Color(0xffff3d36),
        icon: Icons.delete,
      ),
    ],
  );
}
