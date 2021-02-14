class Record {
  String note;
  bool isPinned;

  Record(String a, bool b) {
    note = a;
    isPinned = b;
  }
}

class Notes {
  List<Record> _notes;

  Notes() {
    _notes = new List();
  }
  String getNotes(int index) {
    return _notes[index].note;
  }

  void addNotes(String str) {
    _notes.add(new Record(str, false));
  }

  void deleteNotes(int index) {
    _notes.removeAt(index);
  }

  bool checkIfPinned(int index) {
    return _notes[index].isPinned;
  }

  void toggle(int index) {
    if (_notes[index].isPinned)
      _notes[index].isPinned = false;
    else
      _notes[index].isPinned = true;
  }
}
