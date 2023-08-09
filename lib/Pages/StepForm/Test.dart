
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:flutter/material.dart';


class MyWidget extends StatefulWidget {

  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  //  PlatformFile? pickedFile;

void _pickFile() async {

	// opens storage to pick files and the picked file or files
	// are assigned into result and if no file is chosen result is null.
	// you can also toggle "allowMultiple" true or false depending on your need
	final result = await FilePicker.platform.pickFiles(allowMultiple: false);



	// if no file is picked
	if (result == null) return;

  // setState(() {
  //   pickedFile = result.files.first;
  // });
  
	// we will log the name, size and path of the
	// first picked file (if multiple are selected)
 
	print(result.files.first.name);
	print(result.files.first.size);
	print(result.files.first.path);
}

@override
Widget build(BuildContext context) {
	
	return Scaffold(
		backgroundColor: Colors.green[100],
		body: SafeArea(
          child: Center(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {
                _pickFile();
                },
                child: const Text(
                'Pick and open file',
                style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
              ),
                
            ],
          ),
          ),
        ),
	);
	
}
}





