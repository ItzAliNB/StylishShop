import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F2F2),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              imagePath,
              height: 300,
            ),
          ),
          Expanded(
            // Use Expanded to ensure space for the DraggableSheet
            child: DraggableSheetWrapper(child: Column(
              children: [],
            )),
          ),
        ],
      ),
    );
  }
}

class DraggableSheetWrapper extends StatefulWidget {
  final Widget child;
  const DraggableSheetWrapper({super.key, required this.child});

  @override
  State<DraggableSheetWrapper> createState() => _DraggableSheetState();
}

class _DraggableSheetState extends State<DraggableSheetWrapper> {
  final sheet = GlobalKey();
  final controller = DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      return DraggableScrollableSheet(
        key: sheet,
        initialChildSize: 0.95,
        maxChildSize: 0.95,
        minChildSize: 0.1, // Ensure there's a small initial size
        expand: false, // Don't let it expand automatically
        snap: true,
        snapSizes: [
          0.1, // Minimum snap size
          0.5, // Mid snap size
        ],
        builder: (BuildContext context, ScrollController scrollcontroller) {
          return DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.purple,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22), topRight: Radius.circular(22)),
            ),
            child: CustomScrollView(
              controller: scrollcontroller,
              slivers: [
                SliverToBoxAdapter(
                  child: widget.child,
                )
              ],
            ),
          );
        },
      );
    });
  }
}
