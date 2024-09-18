import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io'; // For the File class

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  final ImagePicker _picker = ImagePicker();
  List<XFile>? files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.6,
              color: const Color.fromARGB(255, 140, 144, 146),
              child: Center(
                child: files == null
                    ? const Text("Image not selected")
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: files!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.file(
                              File(files![index].path),
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                if (photos != null) {
                  setState(() {
                    files = photos;
                  });
                }
              },
              child: Text("Select Image"),
            ),
            // Uncomment the following code if you want to allow single image selection
            // ElevatedButton(
            //   onPressed: () async {
            //     final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
            //     if (photo != null) {
            //       setState(() {
            //         file = photo;
            //         //print(photo.path);
            //       });
            //     }
            //   },
            //   child: Text("Select Image"),
            // ),
          ],
        ),
      ),
    );
  }
}
