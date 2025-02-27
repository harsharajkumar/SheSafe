import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'NavigationScreen.dart';

class SafeRoutesForm extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _situationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        title: Text(
          'Suspicious locations form',
          style: GoogleFonts.outfit(fontWeight: FontWeight.w400, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              border: Border.all(
                  color: Theme.of(context).colorScheme.primary, width: 1),
              borderRadius: BorderRadius.circular(18)),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Location",
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: _nameController,
                style: GoogleFonts.outfit(
                  fontSize: 16.0,
                ),
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description/Situation of place',
                  labelStyle: GoogleFonts.outfit(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _situationController,
                decoration: InputDecoration(
                  labelText: 'Describe the problem you encountered',
                  labelStyle: GoogleFonts.outfit(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 30.0),
              Text(
                'Select Location from Map',
                style: GoogleFonts.outfit(
                    color: Theme.of(context).colorScheme.primary, fontSize: 18),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                    elevation: 0,
                    side: const BorderSide(color: Colors.black54, width: 1)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MapPicker(),
                    ),
                  );
                },
                icon: const Icon(Icons.place),
                label: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Select Location',
                    style:
                    GoogleFonts.outfit(color: Colors.black54, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  _submitForm(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Submit',
                    style:
                    GoogleFonts.outfit(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Form Submitted', style:
          GoogleFonts.outfit(fontSize: 16, fontWeight: FontWeight.w300),),
          content: Text(
            'Suspicious location details have been submitted successfully. Thank you for helping Saheli make women stronger and safer!', style:
          GoogleFonts.outfit(fontSize: 16, fontWeight: FontWeight.w300),),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}



class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MyAppState();
}

class _MyAppState extends State<MapScreen> {
  TextEditingController latController = TextEditingController();
  TextEditingController lngController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submit suspicous locations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Enter your location',
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: latController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'latitude',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: lngController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'longitude',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MapPicker()));
                },
                child: const Text('Get Directions')),
          ),
        ]),
      ),
    );
  }
}