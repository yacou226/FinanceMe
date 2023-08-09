import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:iconsax/iconsax.dart';

class StepTree extends StatefulWidget {
  const StepTree({super.key});

  @override
  State<StepTree> createState() => _StepTreeState();
}

class _StepTreeState extends State<StepTree> {
  String _image =
      'https://ouch-cdn2.icons8.com/84zU-uvFboh65geJMR5XIHCaNkx-BZ2TahEpE9TpVJM/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODU5/L2E1MDk1MmUyLTg1/ZTMtNGU3OC1hYzlh/LWU2NDVmMWRiMjY0/OS5wbmc.png';
   AnimationController? loadingController;

  File? _file;
  PlatformFile? _platformFile;

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
      allowMultiple: true,
        type: FileType.custom, allowedExtensions: ['png', 'jpg', 'jpeg','doc']);

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path!);
        _platformFile = file.files.first;
      });
    }

    loadingController?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10.0,
            ),

            const Text(
              'Veillez charger les différente pièces joints',
              style: TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 49, 47, 49),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'NB:les fichiers doivent etre en  pdf ou  doc',
              style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                // final result = await FilePicker.platform.pickFiles();
                // if (result == null) return;
                selectFile();
              },
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    dashPattern: [10, 4],
                    strokeCap: StrokeCap.round,
                    color: Colors.blue.shade400,
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50.withOpacity(.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Iconsax.folder_open,
                            color: Colors.blue,
                            size: 40,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Selectionner votre carte d'identité nationnal en recto/verso",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            
            // GestureDetector(
            //   onTap: selectFile,
            //   child: Padding(
            //       padding:
            //           EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            //       child: DottedBorder(
            //         borderType: BorderType.RRect,
            //         radius: Radius.circular(10),
            //         dashPattern: [10, 4],
            //         strokeCap: StrokeCap.round,
            //         color: Colors.blue.shade400,
            //         child: Container(
            //           width: double.infinity,
            //           height: 110,
            //           decoration: BoxDecoration(
            //               color: Colors.blue.shade50.withOpacity(.3),
            //               borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               const Icon(
            //                 Iconsax.folder_open,
            //                 color: Colors.blue,
            //                 size: 40,
            //               ),
            //               const SizedBox(
            //                 height: 15,
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Text(
            //                   "Documents Banquaires",
            //                   textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       fontSize: 15, color: Colors.grey.shade400),
            //                 ),
            //               ),

            //             ],
            //           ),
            //         ),
            //       )),
            // ),
            // GestureDetector(
            //   onTap: selectFile,
            //   child: Padding(
            //       padding: const EdgeInsets.symmetric(
            //           horizontal: 40.0, vertical: 20.0),
            //       child: DottedBorder(
            //         borderType: BorderType.RRect,
            //         radius: Radius.circular(10),
            //         dashPattern: [10, 4],
            //         strokeCap: StrokeCap.round,
            //         color: Colors.blue.shade400,
            //         child: Container(
            //           width: double.infinity,
            //           height: 110,
            //           decoration: BoxDecoration(
            //               color: Colors.blue.shade50.withOpacity(.3),
            //               borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               const Icon(
            //                 Iconsax.folder_open,
            //                 color: Colors.blue,
            //                 size: 40,
            //               ),
            //               const SizedBox(
            //                 height: 15,
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Text(
            //                   "SDocument de votre entreprise",
            //                   textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       fontSize: 15, color: Colors.grey.shade400),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       )),
            // ),
            _platformFile != null
                ? Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selected File',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 15,
                          ),
                        ),
                       const  SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    offset: Offset(0, 1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  )
                                ]),
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.file(
                                      _file!,
                                      width: 70,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _platformFile!.name,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${(_platformFile!.size / 1024).ceil()} KB',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey.shade500),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          height: 5,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.blue.shade50,
                                          ),
                                          child: LinearProgressIndicator(
                                            value: loadingController?.value,
                                          )),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        // MaterialButton(
                        //   minWidth: double.infinity,
                        //   height: 45,
                        //   onPressed: () {},
                        //   color: Colors.black,
                        //   child: Text('Upload', style: TextStyle(color: Colors.white),),
                        // )
                      ],
                    ))
                : Container(),
          ],
        ),
      ),
    );
  }
}
