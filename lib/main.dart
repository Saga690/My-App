import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Test()
));

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'NOTES',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w900,
            letterSpacing: 2.5,
            color: Colors.grey[900],
            fontFamily: 'GajrajOne-Regular',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[800],
        elevation: 1.0,
      ),
      body: Column (
        children: <Widget> [
          Container(
            padding: const EdgeInsets.fromLTRB(10.0,400.0,3.0,10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    debugPrint('Note Added');
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PageTwo()));
                  },
                  icon: const Icon( Icons.note_add),
                  label: const Text('Add Note'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue[600]),
                  ),
                ),
                const Form(),
              ],
            ),
          ),
          Container(),
        ],
      ),
      backgroundColor: Colors.amber[50],
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.amber[50],
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left, color:Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top:30.0,bottom:20.0),
            child: const Text(
              'All Notes',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Note(),
          const Note(),
          const Note(),
          const Note(),
          const Note(),
          const Note(),
          const Note(),
          const Note(),
          const Note(),
          const Note(),
        ],
      ),
    );
  }
}

class Form extends StatelessWidget {
  const Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a note',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
        ),
      ],
    );
  }
}

class Note extends StatelessWidget {
  const Note({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Colors.grey[400],
      title: const Text('Note'),
      trailing: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5)
        ),
        child: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.delete),
          onPressed: () {
            debugPrint('Note Deleted');
          },
        ),
      ),
    );
  }
}


