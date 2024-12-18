// import 'package:flutter/material.dart';
// import 'package:ar_flutter_plugin/datatypes/config_planedetection.dart';
// import 'package:ar_flutter_plugin/datatypes/node_types.dart';
// import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
// import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
// import 'package:ar_flutter_plugin/models/ar_node.dart';
// import 'package:ar_flutter_plugin/ar_flutter_plugin.dart'; // Ensure this import is correct
// import 'package:vector_math/vector_math_64.dart'; // Correct import for Vector3

// class ArCarScreen extends StatelessWidget {
//   const ArCarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ARHomePage();
//   }
// }

// class ARHomePage extends StatefulWidget {
//   @override
//   _ARHomePageState createState() => _ARHomePageState();
// }

// class _ARHomePageState extends State<ARHomePage> {
//   late ARSessionManager arSessionManager;
//   late ARObjectManager arObjectManager;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AR App'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           // AR View
//           Expanded(
//             child: ARView(
//               onARViewCreated: onARViewCreated,
//               planeDetectionConfig: PlaneDetectionConfig.horizontal,
//             ),
//           ),
//           // Control Panel
//           Container(
//             padding: EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//               color: Colors.black54,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.5),
//                   offset: Offset(0, -1),
//                   blurRadius: 4,
//                 ),
//               ],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.camera_alt),
//                   color: Colors.white,
//                   onPressed: () {
//                     // Action for Capture
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.refresh),
//                   color: Colors.white,
//                   onPressed: () {
//                     // Action for Reset
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.info),
//                   color: Colors.white,
//                   onPressed: () {
//                     // Action for Info
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void onARViewCreated(
//       ARSessionManager sessionManager, ARObjectManager objectManager) {
//     arSessionManager = sessionManager;
//     arObjectManager = objectManager;

//     // Initialize AR session
//     arSessionManager.onInitialize(
//       showFeaturePoints: false,
//       showPlanes: true,
//       customPlaneTexturePath: null,
//       showWorldOrigin: true,
//     );

//     arObjectManager.onInitialize();
//     add3DModel();
//   }

//   Future<void> add3DModel() async {
//     final node = ARNode(
//       type: NodeType.localGLTF2,
//       uri: "assets/models/fortuner.glb",
//       position: Vector3(0.0, 0.0, -1.0), // 1 meter in front of the camera
//       scale: Vector3(0.5, 0.5, 0.5), // Adjust scale as needed
//     );

//     bool? didAddNode = await arObjectManager.addNode(node);
//     if (didAddNode == true) {
//       print("3D model added successfully!");
//     } else {
//       print("Failed to add 3D model.");
//     }
//   }

//   @override
//   void dispose() {
//     // Proper disposal of AR session and object manager
//     arSessionManager.dispose();
//     arObjectManager.dispose();
//     super.dispose();
//   }
// }

// extension on ARObjectManager {
//   void dispose() {}
// }
